; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_release_masterchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_release_masterchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.pti_masterchannel = type { i32, i32 }

@alloclock = common dso_local global i32 0, align 4
@APP_BASE_ID = common dso_local global i32 0, align 4
@drv_data = common dso_local global %struct.TYPE_2__* null, align 8
@OS_BASE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pti_release_masterchannel(%struct.pti_masterchannel* %0) #0 {
  %2 = alloca %struct.pti_masterchannel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pti_masterchannel* %0, %struct.pti_masterchannel** %2, align 8
  %6 = call i32 @mutex_lock(i32* @alloclock)
  %7 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %2, align 8
  %8 = icmp ne %struct.pti_masterchannel* %7, null
  br i1 %8, label %9, label %72

9:                                                ; preds = %1
  %10 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %2, align 8
  %11 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %2, align 8
  %14 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @APP_BASE_ID, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 3
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 7
  %24 = ashr i32 128, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %25
  store i32 %33, i32* %31, align 4
  br label %69

34:                                               ; preds = %9
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @OS_BASE_ID, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 3
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 7
  %43 = ashr i32 128, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %44
  store i32 %52, i32* %50, align 4
  br label %68

53:                                               ; preds = %34
  %54 = load i32, i32* %4, align 4
  %55 = ashr i32 %54, 3
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 7
  %58 = ashr i32 128, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %59
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %53, %38
  br label %69

69:                                               ; preds = %68, %19
  %70 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %2, align 8
  %71 = call i32 @kfree(%struct.pti_masterchannel* %70)
  br label %72

72:                                               ; preds = %69, %1
  %73 = call i32 @mutex_unlock(i32* @alloclock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.pti_masterchannel*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
