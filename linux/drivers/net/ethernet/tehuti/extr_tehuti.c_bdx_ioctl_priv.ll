; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_ioctl_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_ioctl_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.bdx_priv = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"jiffies=%ld cmd=%d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"can't copy from user\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%d 0x%x 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"read_reg(0x%x)=0x%x (dec %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"write_reg(0x%x, 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @bdx_ioctl_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_ioctl_priv(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bdx_priv*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.bdx_priv* %12, %struct.bdx_priv** %8, align 8
  %13 = load i32, i32* @ENTER, align 4
  %14 = load i32, i32* @jiffies, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %22 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @copy_from_user(i32* %21, i32 %24, i32 12)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @RET(i32 %31)
  br label %33

33:                                               ; preds = %28, %20
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %37, i32 %39)
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %114

44:                                               ; preds = %33
  %45 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %46 = call i32 @capable(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %114

51:                                               ; preds = %44
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %109 [
    i32 129, label %54
    i32 128, label %88
  ]

54:                                               ; preds = %51
  %55 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bdx_range_check(%struct.bdx_priv* %55, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %114

63:                                               ; preds = %54
  %64 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @READ_REG(%struct.bdx_priv* %64, i32 %66)
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %72, i32 %74)
  %76 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %80 = call i32 @copy_to_user(i32 %78, i32* %79, i32 12)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %63
  %84 = load i32, i32* @EFAULT, align 4
  %85 = sub nsw i32 0, %84
  %86 = call i32 @RET(i32 %85)
  br label %87

87:                                               ; preds = %83, %63
  br label %113

88:                                               ; preds = %51
  %89 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @bdx_range_check(%struct.bdx_priv* %89, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %114

97:                                               ; preds = %88
  %98 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @WRITE_REG(%struct.bdx_priv* %98, i32 %100, i32 %102)
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %105, i32 %107)
  br label %113

109:                                              ; preds = %51
  %110 = load i32, i32* @EOPNOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  %112 = call i32 @RET(i32 %111)
  br label %113

113:                                              ; preds = %109, %97, %87
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %95, %61, %48, %41
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG(i8*, i32, i32, ...) #1

declare dso_local i32 @copy_from_user(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @RET(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @bdx_range_check(%struct.bdx_priv*, i32) #1

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @copy_to_user(i32, i32*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
