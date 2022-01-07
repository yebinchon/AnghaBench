; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_cpuspeed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_cpuspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }

@HZ = common dso_local global i32 0, align 4
@Z80_READY = common dso_local global i8 0, align 1
@EIO = common dso_local global i32 0, align 4
@LOADER_READY = common dso_local global i8 0, align 1
@Z80_SCC_OK = common dso_local global i8 0, align 1
@Z80_SCC_BAD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [13 x i8] c"%s: SCC bad\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SDLA_CPU_16M = common dso_local global i32 0, align 4
@SDLA_CPU_10M = common dso_local global i32 0, align 4
@SDLA_CPU_8M = common dso_local global i32 0, align 4
@SDLA_CPU_7M = common dso_local global i32 0, align 4
@SDLA_CPU_5M = common dso_local global i32 0, align 4
@SDLA_CPU_3M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @sdla_cpuspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_cpuspeed(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i32 @sdla_start(%struct.net_device* %8)
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 3, %11
  %13 = load i8, i8* @Z80_READY, align 1
  %14 = call i32 @sdla_z80_poll(%struct.net_device* %10, i32 0, i32 %12, i8 signext %13, i8 signext 0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = load i8, i8* @LOADER_READY, align 1
  store i8 %20, i8* %7, align 1
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @sdla_write(%struct.net_device* %21, i32 0, i8* %7, i32 1)
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 8, %24
  %26 = load i8, i8* @Z80_SCC_OK, align 1
  %27 = load i8, i8* @Z80_SCC_BAD, align 1
  %28 = call i32 @sdla_z80_poll(%struct.net_device* %23, i32 0, i32 %25, i8 signext %26, i8 signext %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %103

33:                                               ; preds = %19
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @sdla_stop(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @sdla_read(%struct.net_device* %36, i32 0, i8* %7, i32 1)
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* @Z80_SCC_BAD, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %103

50:                                               ; preds = %33
  %51 = load i8, i8* %7, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* @Z80_SCC_OK, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %103

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 165
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @SDLA_CPU_16M, align 4
  %64 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %65 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %102

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 220
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @SDLA_CPU_10M, align 4
  %71 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %101

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 258
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @SDLA_CPU_8M, align 4
  %78 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %79 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %100

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 357
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @SDLA_CPU_7M, align 4
  %85 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %86 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %99

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 467
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @SDLA_CPU_5M, align 4
  %92 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %93 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @SDLA_CPU_3M, align 4
  %96 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %97 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %83
  br label %100

100:                                              ; preds = %99, %76
  br label %101

101:                                              ; preds = %100, %69
  br label %102

102:                                              ; preds = %101, %62
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %56, %43, %30, %16
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @sdla_start(%struct.net_device*) #1

declare dso_local i32 @sdla_z80_poll(%struct.net_device*, i32, i32, i8 signext, i8 signext) #1

declare dso_local i32 @sdla_write(%struct.net_device*, i32, i8*, i32) #1

declare dso_local i32 @sdla_stop(%struct.net_device*) #1

declare dso_local i32 @sdla_read(%struct.net_device*, i32, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
