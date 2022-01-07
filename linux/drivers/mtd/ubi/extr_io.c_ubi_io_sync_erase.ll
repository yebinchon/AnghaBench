; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_sync_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_sync_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"read-only mode\00", align 1
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_sync_erase(%struct.ubi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i1 [ false, %3 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ubi_assert(i32 %20)
  %22 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @self_check_not_bad(%struct.ubi_device* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %18
  %30 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %36 = call i32 @ubi_err(%struct.ubi_device* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EROFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %76

39:                                               ; preds = %29
  %40 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %41 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @nor_erase_prepare(%struct.ubi_device* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @torture_peb(%struct.ubi_device* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %76

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @do_sync_erase(%struct.ubi_device* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %71, %62, %50, %34, %27
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @self_check_not_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*) #1

declare dso_local i32 @nor_erase_prepare(%struct.ubi_device*, i32) #1

declare dso_local i32 @torture_peb(%struct.ubi_device*, i32) #1

declare dso_local i32 @do_sync_erase(%struct.ubi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
