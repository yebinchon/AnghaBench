; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_mkiss.c_kiss_unesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_mkiss.c_kiss_unesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkiss = type { i32, i64, i8*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AXF_KEEPTEST = common dso_local global i32 0, align 4
@AXF_ERROR = common dso_local global i32 0, align 4
@AXF_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mkiss*, i8)* @kiss_unesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kiss_unesc(%struct.mkiss* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.mkiss*, align 8
  %4 = alloca i8, align 1
  store %struct.mkiss* %0, %struct.mkiss** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  switch i32 %6, label %60 [
    i32 131, label %7
    i32 130, label %39
    i32 128, label %44
    i32 129, label %52
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @AXF_KEEPTEST, align 4
  %9 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %10 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %9, i32 0, i32 4
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i32, i32* @AXF_KEEPTEST, align 4
  %15 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %16 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %15, i32 0, i32 4
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  br label %18

18:                                               ; preds = %13, %7
  %19 = load i32, i32* @AXF_ERROR, align 4
  %20 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %21 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %20, i32 0, i32 4
  %22 = call i32 @test_and_clear_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %26 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %31 = call i32 @ax_bump(%struct.mkiss* %30)
  br label %32

32:                                               ; preds = %29, %24, %18
  %33 = load i32, i32* @AXF_ESCAPE, align 4
  %34 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %35 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %34, i32 0, i32 4
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %38 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %108

39:                                               ; preds = %2
  %40 = load i32, i32* @AXF_ESCAPE, align 4
  %41 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %42 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %41, i32 0, i32 4
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %108

44:                                               ; preds = %2
  %45 = load i32, i32* @AXF_ESCAPE, align 4
  %46 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %47 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %46, i32 0, i32 4
  %48 = call i32 @test_and_clear_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8 -126, i8* %4, align 1
  br label %51

51:                                               ; preds = %50, %44
  br label %60

52:                                               ; preds = %2
  %53 = load i32, i32* @AXF_ESCAPE, align 4
  %54 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %55 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %54, i32 0, i32 4
  %56 = call i32 @test_and_clear_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i8 -125, i8* %4, align 1
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %2, %59, %51
  %61 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %62 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %61, i32 0, i32 3
  %63 = call i32 @spin_lock_bh(i32* %62)
  %64 = load i32, i32* @AXF_ERROR, align 4
  %65 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %66 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %65, i32 0, i32 4
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %60
  %70 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %71 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %75 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %69
  %79 = load i8, i8* %4, align 1
  %80 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %81 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %84 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %82, i64 %87
  store i8 %79, i8* %88, align 1
  %89 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %90 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %89, i32 0, i32 3
  %91 = call i32 @spin_unlock_bh(i32* %90)
  br label %108

92:                                               ; preds = %69
  %93 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %94 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %93, i32 0, i32 5
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @AXF_ERROR, align 4
  %101 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %102 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %101, i32 0, i32 4
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  br label %104

104:                                              ; preds = %92, %60
  %105 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %106 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %105, i32 0, i32 3
  %107 = call i32 @spin_unlock_bh(i32* %106)
  br label %108

108:                                              ; preds = %104, %78, %39, %32
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ax_bump(%struct.mkiss*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
