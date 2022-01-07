; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%d: PLL: no change required\0A\00", align 1
@bttv_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"%d: PLL can sleep, using XTAL (%d)\0A\00", align 1
@BT848_TGCTRL = common dso_local global i32 0, align 4
@BT848_PLL_XCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%d: Setting PLL: %d => %d (needs up to 100ms)\0A\00", align 1
@BT848_DSTATUS = common dso_local global i32 0, align 4
@BT848_DSTATUS_PLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"PLL set ok\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Setting PLL failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pll(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %4 = load %struct.bttv*, %struct.bttv** %2, align 8
  %5 = getelementptr inbounds %struct.bttv, %struct.bttv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %135

10:                                               ; preds = %1
  %11 = load %struct.bttv*, %struct.bttv** %2, align 8
  %12 = getelementptr inbounds %struct.bttv, %struct.bttv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bttv*, %struct.bttv** %2, align 8
  %16 = getelementptr inbounds %struct.bttv, %struct.bttv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load %struct.bttv*, %struct.bttv** %2, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %135

26:                                               ; preds = %10
  %27 = load %struct.bttv*, %struct.bttv** %2, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bttv*, %struct.bttv** %2, align 8
  %32 = getelementptr inbounds %struct.bttv, %struct.bttv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %30, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %26
  %38 = load %struct.bttv*, %struct.bttv** %2, align 8
  %39 = getelementptr inbounds %struct.bttv, %struct.bttv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %135

44:                                               ; preds = %37
  %45 = load i64, i64* @bttv_verbose, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.bttv*, %struct.bttv** %2, align 8
  %49 = getelementptr inbounds %struct.bttv, %struct.bttv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bttv*, %struct.bttv** %2, align 8
  %53 = getelementptr inbounds %struct.bttv, %struct.bttv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %55)
  br label %57

57:                                               ; preds = %47, %44
  %58 = load i32, i32* @BT848_TGCTRL, align 4
  %59 = call i32 @btwrite(i32 0, i32 %58)
  %60 = load i32, i32* @BT848_PLL_XCI, align 4
  %61 = call i32 @btwrite(i32 0, i32 %60)
  %62 = load %struct.bttv*, %struct.bttv** %2, align 8
  %63 = getelementptr inbounds %struct.bttv, %struct.bttv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %135

65:                                               ; preds = %26
  %66 = load i64, i64* @bttv_verbose, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load %struct.bttv*, %struct.bttv** %2, align 8
  %70 = getelementptr inbounds %struct.bttv, %struct.bttv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.bttv*, %struct.bttv** %2, align 8
  %74 = getelementptr inbounds %struct.bttv, %struct.bttv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bttv*, %struct.bttv** %2, align 8
  %78 = getelementptr inbounds %struct.bttv, %struct.bttv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %76, i32 %80)
  br label %82

82:                                               ; preds = %68, %65
  %83 = load %struct.bttv*, %struct.bttv** %2, align 8
  %84 = load %struct.bttv*, %struct.bttv** %2, align 8
  %85 = getelementptr inbounds %struct.bttv, %struct.bttv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.bttv*, %struct.bttv** %2, align 8
  %89 = getelementptr inbounds %struct.bttv, %struct.bttv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = call i32 @set_pll_freq(%struct.bttv* %83, i64 %87, i64 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %123, %82
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 10
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  %98 = call i32 @msleep(i32 10)
  %99 = load i32, i32* @BT848_DSTATUS, align 4
  %100 = call i32 @btread(i32 %99)
  %101 = load i32, i32* @BT848_DSTATUS_PLOCK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @BT848_DSTATUS, align 4
  %106 = call i32 @btwrite(i32 0, i32 %105)
  br label %122

107:                                              ; preds = %97
  %108 = load i32, i32* @BT848_TGCTRL, align 4
  %109 = call i32 @btwrite(i32 8, i32 %108)
  %110 = load %struct.bttv*, %struct.bttv** %2, align 8
  %111 = getelementptr inbounds %struct.bttv, %struct.bttv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.bttv*, %struct.bttv** %2, align 8
  %115 = getelementptr inbounds %struct.bttv, %struct.bttv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load i64, i64* @bttv_verbose, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %107
  br label %135

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %94

126:                                              ; preds = %94
  %127 = load %struct.bttv*, %struct.bttv** %2, align 8
  %128 = getelementptr inbounds %struct.bttv, %struct.bttv* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 -1, i32* %129, align 4
  %130 = load i64, i64* @bttv_verbose, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %126
  br label %135

135:                                              ; preds = %134, %121, %57, %43, %20, %9
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @set_pll_freq(%struct.bttv*, i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @btread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
