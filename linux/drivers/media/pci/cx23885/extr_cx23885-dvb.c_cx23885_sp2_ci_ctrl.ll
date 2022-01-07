; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_cx23885_sp2_ci_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_cx23885_sp2_ci_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_tsport = type { %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }

@MC417_OEN = common dso_local global i32 0, align 4
@MC417_RWD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@SP2_ACK = common dso_local global i32 0, align 4
@SP2_ADHI = common dso_local global i32 0, align 4
@SP2_ADLO = common dso_local global i32 0, align 4
@SP2_CS0 = common dso_local global i32 0, align 4
@SP2_CTRL_OFF = common dso_local global i32 0, align 4
@SP2_DATA = common dso_local global i32 0, align 4
@SP2_EN_ALL = common dso_local global i32 0, align 4
@SP2_RD = common dso_local global i32 0, align 4
@SP2_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32*)* @cx23885_sp2_ci_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_sp2_ci_ctrl(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cx23885_tsport*, align 8
  %13 = alloca %struct.cx23885_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.cx23885_tsport*
  store %struct.cx23885_tsport* %18, %struct.cx23885_tsport** %12, align 8
  %19 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %12, align 8
  %20 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %19, i32 0, i32 0
  %21 = load %struct.cx23885_dev*, %struct.cx23885_dev** %20, align 8
  store %struct.cx23885_dev* %21, %struct.cx23885_dev** %13, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %13, align 8
  %23 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* @MC417_OEN, align 4
  %26 = call i32 @cx_write(i32 %25, i32 4096)
  %27 = load i32, i32* @MC417_RWD, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 255, %28
  %30 = or i32 50944, %29
  %31 = call i32 @cx_write(i32 %27, i32 %30)
  %32 = load i32, i32* @MC417_RWD, align 4
  %33 = call i32 @cx_clear(i32 %32, i32 1024)
  %34 = load i32, i32* @MC417_RWD, align 4
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 255, %36
  %38 = or i32 51968, %37
  %39 = call i32 @cx_write(i32 %34, i32 %38)
  %40 = load i32, i32* @MC417_RWD, align 4
  %41 = call i32 @cx_clear(i32 %40, i32 2048)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %5
  %45 = load i32, i32* @MC417_OEN, align 4
  %46 = call i32 @cx_write(i32 %45, i32 4351)
  br label %52

47:                                               ; preds = %5
  %48 = load i32, i32* @MC417_RWD, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 49920, %49
  %51 = call i32 @cx_write(i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @MC417_RWD, align 4
  %54 = call i32 @cx_clear(i32 %53, i32 256)
  %55 = load i32, i32* @MC417_RWD, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 16384, i32 32768
  %60 = call i32 @cx_clear(i32 %55, i32 %59)
  %61 = load i64, i64* @jiffies, align 8
  %62 = call i64 @msecs_to_jiffies(i32 1)
  %63 = add i64 %61, %62
  store i64 %63, i64* %16, align 8
  br label %64

64:                                               ; preds = %77, %52
  %65 = load i64, i64* @jiffies, align 8
  %66 = load i64, i64* %16, align 8
  %67 = call i32 @time_after(i64 %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i32, i32* @MC417_RWD, align 4
  %72 = call i32 @cx_read(i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %73, 4096
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %79

77:                                               ; preds = %70
  %78 = call i32 @usleep_range(i32 50, i32 100)
  br label %64

79:                                               ; preds = %76, %64
  %80 = load i32, i32* @MC417_RWD, align 4
  %81 = call i32 @cx_set(i32 %80, i32 49920)
  %82 = load i32, i32* %15, align 4
  %83 = and i32 %82, 255
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.cx23885_dev*, %struct.cx23885_dev** %13, align 8
  %86 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %79
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EREMOTEIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %14, align 4
  br label %99

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %79
  store i32 0, i32* %6, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
