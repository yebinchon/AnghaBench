; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i32, i32, i32, i32, i64, %struct.mei_device* }
%struct.mei_device = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"unlink client\00", align 1
@MEI_FILE_UNINITIALIZED = common dso_local global i32 0, align 4
@MEI_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_unlink(%struct.mei_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_cl*, align 8
  %4 = alloca %struct.mei_device*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %3, align 8
  %5 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %6 = icmp ne %struct.mei_cl* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

8:                                                ; preds = %1
  %9 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %10 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %9, i32 0, i32 6
  %11 = load %struct.mei_device*, %struct.mei_device** %10, align 8
  %12 = icmp ne %struct.mei_device* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %76

18:                                               ; preds = %8
  %19 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %20 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %19, i32 0, i32 6
  %21 = load %struct.mei_device*, %struct.mei_device** %20, align 8
  store %struct.mei_device* %21, %struct.mei_device** %4, align 8
  %22 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %23 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %24 = call i32 @cl_dbg(%struct.mei_device* %22, %struct.mei_cl* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %26 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %31 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %29, %18
  %35 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %36 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %41 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %44 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clear_bit(i64 %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %49 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %48, i32 0, i32 0
  %50 = call i32 @list_del_init(i32* %49)
  %51 = load i32, i32* @MEI_FILE_UNINITIALIZED, align 4
  %52 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %53 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @MEI_IDLE, align 4
  %55 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %56 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %58 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %57, i32 0, i32 2
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %47
  %62 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %63 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %62, i32 0, i32 1
  %64 = call i32 @list_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %68 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %67, i32 0, i32 0
  %69 = call i32 @list_empty(i32* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %66, %61, %47
  %73 = phi i1 [ true, %61 ], [ true, %47 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 @WARN_ON(i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %17, %7
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
