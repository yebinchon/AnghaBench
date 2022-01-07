; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_keygen.c_keygen_port_hashing_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_keygen.c_keygen_port_hashing_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_keygen = type { i32 }
%struct.keygen_scheme = type { i32, i32, i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Base FQID must be between 1 and 2^24-1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Hash size must be power of two\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"The maximum number of available Schemes has been exceeded\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Requested Scheme does not exist\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"The requested Scheme is already used\0A\00", align 1
@DEFAULT_SYMMETRIC_HASH = common dso_local global i32 0, align 4
@DEFAULT_HASH_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Scheme setup failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Binding port to schemes failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keygen_port_hashing_init(%struct.fman_keygen* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fman_keygen*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.keygen_scheme*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fman_keygen* %0, %struct.fman_keygen** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, -16777216
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %104

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %23
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %104

36:                                               ; preds = %26
  %37 = load %struct.fman_keygen*, %struct.fman_keygen** %6, align 8
  %38 = call i32 @get_free_scheme_id(%struct.fman_keygen* %37, i32* %11)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %104

45:                                               ; preds = %36
  %46 = load %struct.fman_keygen*, %struct.fman_keygen** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.keygen_scheme* @get_scheme(%struct.fman_keygen* %46, i32 %47)
  store %struct.keygen_scheme* %48, %struct.keygen_scheme** %10, align 8
  %49 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %50 = icmp ne %struct.keygen_scheme* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %104

55:                                               ; preds = %45
  %56 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %57 = getelementptr inbounds %struct.keygen_scheme, %struct.keygen_scheme* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %104

64:                                               ; preds = %55
  %65 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %66 = call i32 @memset(%struct.keygen_scheme* %65, i32 0, i32 48)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %69 = getelementptr inbounds %struct.keygen_scheme, %struct.keygen_scheme* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %71 = getelementptr inbounds %struct.keygen_scheme, %struct.keygen_scheme* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %74 = getelementptr inbounds %struct.keygen_scheme, %struct.keygen_scheme* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %77 = getelementptr inbounds %struct.keygen_scheme, %struct.keygen_scheme* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @DEFAULT_SYMMETRIC_HASH, align 4
  %79 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %80 = getelementptr inbounds %struct.keygen_scheme, %struct.keygen_scheme* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @DEFAULT_HASH_SHIFT, align 4
  %82 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %83 = getelementptr inbounds %struct.keygen_scheme, %struct.keygen_scheme* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.keygen_scheme*, %struct.keygen_scheme** %10, align 8
  %85 = getelementptr inbounds %struct.keygen_scheme, %struct.keygen_scheme* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.fman_keygen*, %struct.fman_keygen** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @keygen_scheme_setup(%struct.fman_keygen* %86, i32 %87, i32 1)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %64
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %104

94:                                               ; preds = %64
  %95 = load %struct.fman_keygen*, %struct.fman_keygen** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @keygen_bind_port_to_schemes(%struct.fman_keygen* %95, i32 %96, i32 1)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %5, align 4
  br label %104

103:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %100, %91, %60, %51, %41, %32, %19
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @get_free_scheme_id(%struct.fman_keygen*, i32*) #1

declare dso_local %struct.keygen_scheme* @get_scheme(%struct.fman_keygen*, i32) #1

declare dso_local i32 @memset(%struct.keygen_scheme*, i32, i32) #1

declare dso_local i32 @keygen_scheme_setup(%struct.fman_keygen*, i32, i32) #1

declare dso_local i32 @keygen_bind_port_to_schemes(%struct.fman_keygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
