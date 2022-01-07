; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fjes_hw*)* @fjes_hw_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjes_hw_cleanup(%struct.fjes_hw* %0) #0 {
  %2 = alloca %struct.fjes_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %2, align 8
  %4 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %5 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %68

9:                                                ; preds = %1
  %10 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %11 = call i32 @fjes_hw_free_shared_status_region(%struct.fjes_hw* %10)
  %12 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %13 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @kfree(%struct.TYPE_4__* %15)
  %17 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %18 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %21 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @kfree(%struct.TYPE_4__* %23)
  %25 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %26 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %58, %9
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %31 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %37 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %58

41:                                               ; preds = %34
  %42 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %43 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = call i32 @fjes_hw_free_epbuf(i32* %48)
  %50 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %51 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @fjes_hw_free_epbuf(i32* %56)
  br label %58

58:                                               ; preds = %41, %40
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %63 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = call i32 @kfree(%struct.TYPE_4__* %64)
  %66 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %67 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %66, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %67, align 8
  br label %68

68:                                               ; preds = %61, %8
  ret void
}

declare dso_local i32 @fjes_hw_free_shared_status_region(%struct.fjes_hw*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @fjes_hw_free_epbuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
