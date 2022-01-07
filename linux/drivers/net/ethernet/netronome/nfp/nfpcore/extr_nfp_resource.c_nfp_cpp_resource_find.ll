; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_cpp_resource_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_cpp_resource_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_resource = type { i32, i32, i8*, i32, i32 }
%struct.nfp_resource_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i8* }

@NFP_RESOURCE_TBL_TARGET = common dso_local global i32 0, align 4
@NFP_RESOURCE_TBL_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Grabbing device lock not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_RESOURCE_ENTRY_NAME_SZ = common dso_local global i32 0, align 4
@NFP_RESOURCE_TBL_ENTRIES = common dso_local global i32 0, align 4
@NFP_RESOURCE_TBL_BASE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp*, %struct.nfp_resource*)* @nfp_cpp_resource_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_cpp_resource_find(%struct.nfp_cpp* %0, %struct.nfp_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca %struct.nfp_resource*, align 8
  %6 = alloca %struct.nfp_resource_entry, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %4, align 8
  store %struct.nfp_resource* %1, %struct.nfp_resource** %5, align 8
  %12 = load i32, i32* @NFP_RESOURCE_TBL_TARGET, align 4
  %13 = call i8* @NFP_CPP_ID(i32 %12, i32 3, i32 0)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.nfp_resource*, %struct.nfp_resource** %5, align 8
  %15 = getelementptr inbounds %struct.nfp_resource, %struct.nfp_resource* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFP_RESOURCE_TBL_NAME, align 4
  %18 = call i32 @strcmp(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %22 = call i32 @nfp_err(%struct.nfp_cpp* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %100

25:                                               ; preds = %2
  %26 = load %struct.nfp_resource*, %struct.nfp_resource** %5, align 8
  %27 = getelementptr inbounds %struct.nfp_resource, %struct.nfp_resource* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NFP_RESOURCE_ENTRY_NAME_SZ, align 4
  %30 = call i8* @crc32_posix(i32 %28, i32 %29)
  store i8* %30, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %94, %25
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @NFP_RESOURCE_TBL_ENTRIES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %97

35:                                               ; preds = %31
  %36 = load i32, i32* @NFP_RESOURCE_TBL_BASE, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 40, %39
  %41 = add i64 %37, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @nfp_cpp_read(%struct.nfp_cpp* %43, i8* %44, i32 %45, %struct.nfp_resource_entry* %6, i32 40)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 40
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %100

53:                                               ; preds = %35
  %54 = getelementptr inbounds %struct.nfp_resource_entry, %struct.nfp_resource_entry* %6, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %94

60:                                               ; preds = %53
  %61 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %62 = load i32, i32* @NFP_RESOURCE_TBL_TARGET, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @nfp_cpp_mutex_alloc(%struct.nfp_cpp* %61, i32 %62, i32 %63, i8* %64)
  %66 = load %struct.nfp_resource*, %struct.nfp_resource** %5, align 8
  %67 = getelementptr inbounds %struct.nfp_resource, %struct.nfp_resource* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds %struct.nfp_resource_entry, %struct.nfp_resource_entry* %6, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.nfp_resource_entry, %struct.nfp_resource_entry* %6, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.nfp_resource_entry, %struct.nfp_resource_entry* %6, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @NFP_CPP_ID(i32 %70, i32 %73, i32 %76)
  %78 = load %struct.nfp_resource*, %struct.nfp_resource** %5, align 8
  %79 = getelementptr inbounds %struct.nfp_resource, %struct.nfp_resource* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = getelementptr inbounds %struct.nfp_resource_entry, %struct.nfp_resource_entry* %6, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 %83, 8
  %85 = load %struct.nfp_resource*, %struct.nfp_resource** %5, align 8
  %86 = getelementptr inbounds %struct.nfp_resource, %struct.nfp_resource* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = getelementptr inbounds %struct.nfp_resource_entry, %struct.nfp_resource_entry* %6, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = shl i32 %90, 8
  %92 = load %struct.nfp_resource*, %struct.nfp_resource** %5, align 8
  %93 = getelementptr inbounds %struct.nfp_resource, %struct.nfp_resource* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  store i32 0, i32* %3, align 4
  br label %100

94:                                               ; preds = %59
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %31

97:                                               ; preds = %31
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %60, %50, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i8* @NFP_CPP_ID(i32, i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*) #1

declare dso_local i8* @crc32_posix(i32, i32) #1

declare dso_local i32 @nfp_cpp_read(%struct.nfp_cpp*, i8*, i32, %struct.nfp_resource_entry*, i32) #1

declare dso_local i32 @nfp_cpp_mutex_alloc(%struct.nfp_cpp*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
