; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slcan_unesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slcan_unesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slcan = type { i32, i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SLF_ERROR = common dso_local global i32 0, align 4
@SLC_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slcan*, i8)* @slcan_unesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slcan_unesc(%struct.slcan* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.slcan*, align 8
  %4 = alloca i8, align 1
  store %struct.slcan* %0, %struct.slcan** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %29

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @SLF_ERROR, align 4
  %14 = load %struct.slcan*, %struct.slcan** %3, align 8
  %15 = getelementptr inbounds %struct.slcan, %struct.slcan* %14, i32 0, i32 2
  %16 = call i32 @test_and_clear_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.slcan*, %struct.slcan** %3, align 8
  %20 = getelementptr inbounds %struct.slcan, %struct.slcan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.slcan*, %struct.slcan** %3, align 8
  %25 = call i32 @slc_bump(%struct.slcan* %24)
  br label %26

26:                                               ; preds = %23, %18, %12
  %27 = load %struct.slcan*, %struct.slcan** %3, align 8
  %28 = getelementptr inbounds %struct.slcan, %struct.slcan* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %66

29:                                               ; preds = %8
  %30 = load i32, i32* @SLF_ERROR, align 4
  %31 = load %struct.slcan*, %struct.slcan** %3, align 8
  %32 = getelementptr inbounds %struct.slcan, %struct.slcan* %31, i32 0, i32 2
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %29
  %36 = load %struct.slcan*, %struct.slcan** %3, align 8
  %37 = getelementptr inbounds %struct.slcan, %struct.slcan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SLC_MTU, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i8, i8* %4, align 1
  %43 = load %struct.slcan*, %struct.slcan** %3, align 8
  %44 = getelementptr inbounds %struct.slcan, %struct.slcan* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.slcan*, %struct.slcan** %3, align 8
  %47 = getelementptr inbounds %struct.slcan, %struct.slcan* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %45, i64 %50
  store i8 %42, i8* %51, align 1
  br label %66

52:                                               ; preds = %35
  %53 = load %struct.slcan*, %struct.slcan** %3, align 8
  %54 = getelementptr inbounds %struct.slcan, %struct.slcan* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @SLF_ERROR, align 4
  %61 = load %struct.slcan*, %struct.slcan** %3, align 8
  %62 = getelementptr inbounds %struct.slcan, %struct.slcan* %61, i32 0, i32 2
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %29
  br label %66

66:                                               ; preds = %41, %65, %26
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @slc_bump(%struct.slcan*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
