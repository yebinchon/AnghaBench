; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pti_masterchannel = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pti_masterchannel* (i32*, i32, i32, i8*)* @get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pti_masterchannel* @get_id(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.pti_masterchannel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pti_masterchannel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pti_masterchannel* @kmalloc(i32 8, i32 %14)
  store %struct.pti_masterchannel* %15, %struct.pti_masterchannel** %10, align 8
  %16 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %10, align 8
  %17 = icmp eq %struct.pti_masterchannel* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.pti_masterchannel* null, %struct.pti_masterchannel** %5, align 8
  br label %85

19:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 255
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %36

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %20

36:                                               ; preds = %31, %20
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %10, align 8
  %42 = call i32 @kfree(%struct.pti_masterchannel* %41)
  store %struct.pti_masterchannel* null, %struct.pti_masterchannel** %5, align 8
  br label %85

43:                                               ; preds = %36
  store i32 128, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %63

57:                                               ; preds = %47
  %58 = load i32, i32* %13, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %44

63:                                               ; preds = %56, %44
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %10, align 8
  %73 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, 15
  %76 = shl i32 %75, 3
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %10, align 8
  %80 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %10, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @pti_control_frame_built_and_sent(%struct.pti_masterchannel* %81, i8* %82)
  %84 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %10, align 8
  store %struct.pti_masterchannel* %84, %struct.pti_masterchannel** %5, align 8
  br label %85

85:                                               ; preds = %63, %40, %18
  %86 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %5, align 8
  ret %struct.pti_masterchannel* %86
}

declare dso_local %struct.pti_masterchannel* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.pti_masterchannel*) #1

declare dso_local i32 @pti_control_frame_built_and_sent(%struct.pti_masterchannel*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
