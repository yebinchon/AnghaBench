; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MEI_CLIENTS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"id exceeded %d\00", align 1
@EMFILE = common dso_local global i32 0, align 4
@MEI_MAX_OPEN_HANDLE_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"open_handle_count exceeded %d\00", align 1
@MEI_FILE_INITIALIZING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"link cl\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_link(%struct.mei_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_cl*, align 8
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %3, align 8
  %6 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %7 = icmp ne %struct.mei_cl* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %10 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %9, i32 0, i32 3
  %11 = load %struct.mei_device*, %struct.mei_device** %10, align 8
  %12 = icmp ne %struct.mei_device* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %80

22:                                               ; preds = %14
  %23 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %24 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %23, i32 0, i32 3
  %25 = load %struct.mei_device*, %struct.mei_device** %24, align 8
  store %struct.mei_device* %25, %struct.mei_device** %4, align 8
  %26 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %27 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MEI_CLIENTS_MAX, align 4
  %30 = call i32 @find_first_zero_bit(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MEI_CLIENTS_MAX, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %36 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MEI_CLIENTS_MAX, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EMFILE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %80

42:                                               ; preds = %22
  %43 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %44 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MEI_MAX_OPEN_HANDLE_COUNT, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %50 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MEI_MAX_OPEN_HANDLE_COUNT, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EMFILE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %80

56:                                               ; preds = %42
  %57 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %58 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %63 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %65 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %64, i32 0, i32 2
  %66 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %67 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %66, i32 0, i32 2
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %71 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @set_bit(i32 %69, i32 %72)
  %74 = load i32, i32* @MEI_FILE_INITIALIZING, align 4
  %75 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %76 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %78 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %79 = call i32 @cl_dbg(%struct.mei_device* %77, %struct.mei_cl* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %56, %48, %34, %19
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
