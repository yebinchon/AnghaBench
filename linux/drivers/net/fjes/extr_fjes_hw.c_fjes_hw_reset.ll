; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i32 }
%union.REG_DCTL = type { i8* }
%struct.TYPE_2__ = type { i32 }

@XSCT_DCTL = common dso_local global i32 0, align 4
@FJES_DEVICE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_reset(%struct.fjes_hw* %0) #0 {
  %2 = alloca %struct.fjes_hw*, align 8
  %3 = alloca %union.REG_DCTL, align 8
  %4 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %2, align 8
  %5 = bitcast %union.REG_DCTL* %3 to i8**
  store i8* null, i8** %5, align 8
  %6 = bitcast %union.REG_DCTL* %3 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load i32, i32* @XSCT_DCTL, align 4
  %9 = bitcast %union.REG_DCTL* %3 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @wr32(i32 %8, i8* %10)
  %12 = load i32, i32* @FJES_DEVICE_RESET_TIMEOUT, align 4
  %13 = mul nsw i32 %12, 1000
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @XSCT_DCTL, align 4
  %15 = call i8* @rd32(i32 %14)
  %16 = bitcast %union.REG_DCTL* %3 to i8**
  store i8* %15, i8** %16, align 8
  br label %17

17:                                               ; preds = %27, %1
  %18 = bitcast %union.REG_DCTL* %3 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = call i32 @msleep(i32 1000)
  %29 = load i32, i32* @XSCT_DCTL, align 4
  %30 = call i8* @rd32(i32 %29)
  %31 = bitcast %union.REG_DCTL* %3 to i8**
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 1000
  store i32 %33, i32* %4, align 4
  br label %17

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  ret i32 %42
}

declare dso_local i32 @wr32(i32, i8*) #1

declare dso_local i8* @rd32(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
