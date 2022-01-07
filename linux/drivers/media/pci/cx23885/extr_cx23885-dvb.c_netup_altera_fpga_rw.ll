; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_netup_altera_fpga_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_netup_altera_fpga_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MC417_RWD = common dso_local global i32 0, align 4
@MC417_OEN = common dso_local global i32 0, align 4
@ALT_DATA = common dso_local global i32 0, align 4
@ALT_AD_RG = common dso_local global i32 0, align 4
@ALT_CS = common dso_local global i32 0, align 4
@ALT_RD = common dso_local global i32 0, align 4
@ALT_WR = common dso_local global i32 0, align 4
@ALT_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @netup_altera_fpga_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netup_altera_fpga_rw(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cx23885_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.cx23885_dev*
  store %struct.cx23885_dev* %14, %struct.cx23885_dev** %10, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = call i64 @msecs_to_jiffies(i32 1)
  %17 = add i64 %15, %16
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @MC417_RWD, align 4
  %19 = call i32 @cx_read(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @MC417_OEN, align 4
  %24 = load i32, i32* @ALT_DATA, align 4
  %25 = call i32 @cx_set(i32 %23, i32 %24)
  br label %39

26:                                               ; preds = %4
  %27 = load i32, i32* @MC417_OEN, align 4
  %28 = load i32, i32* @ALT_DATA, align 4
  %29 = call i32 @cx_clear(i32 %27, i32 %28)
  %30 = load i32, i32* @ALT_DATA, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ALT_DATA, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %26, %22
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @ALT_AD_RG, align 4
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @ALT_AD_RG, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* @ALT_CS, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @ALT_RD, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = load i32, i32* @ALT_WR, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %12, align 4
  br label %72

65:                                               ; preds = %51
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @ALT_WR, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load i32, i32* @ALT_RD, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* @MC417_RWD, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @cx_write(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %90, %72
  %77 = load i32, i32* @MC417_RWD, align 4
  %78 = call i32 @cx_read(i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @ALT_RDY, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %92

84:                                               ; preds = %76
  %85 = load i64, i64* @jiffies, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i64 @time_after(i64 %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %92

90:                                               ; preds = %84
  %91 = call i32 @udelay(i32 1)
  br label %76

92:                                               ; preds = %89, %83
  %93 = load i32, i32* @MC417_RWD, align 4
  %94 = load i32, i32* @ALT_RD, align 4
  %95 = load i32, i32* @ALT_WR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @ALT_CS, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @cx_set(i32 %93, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @ALT_DATA, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %5, align 4
  br label %107

106:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %102
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
