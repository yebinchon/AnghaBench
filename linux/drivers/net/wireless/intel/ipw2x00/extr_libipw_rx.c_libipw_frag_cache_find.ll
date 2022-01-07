; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_frag_cache_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_frag_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_frag_entry = type { i32, i32, i32, i32, i32*, i64 }
%struct.libipw_device = type { %struct.libipw_frag_entry* }

@LIBIPW_FRAG_CACHE_LEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"expiring fragment cache entry seq=%u last_frag=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.libipw_frag_entry* (%struct.libipw_device*, i32, i32, i32*, i32*)* @libipw_frag_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.libipw_frag_entry* @libipw_frag_cache_find(%struct.libipw_device* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.libipw_frag_entry*, align 8
  %7 = alloca %struct.libipw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.libipw_frag_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %92, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* @LIBIPW_FRAG_CACHE_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %14
  %19 = load %struct.libipw_device*, %struct.libipw_device** %7, align 8
  %20 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %19, i32 0, i32 0
  %21 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %20, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %21, i64 %23
  store %struct.libipw_frag_entry* %24, %struct.libipw_frag_entry** %12, align 8
  %25 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %26 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %18
  %30 = load i32, i32* @jiffies, align 4
  %31 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %32 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 2, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i64 @time_after(i32 %30, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %42 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %45 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @LIBIPW_DEBUG_FRAG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %49 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dev_kfree_skb_any(i32* %50)
  %52 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %53 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %40, %29, %18
  %55 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %56 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %91

59:                                               ; preds = %54
  %60 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %61 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %67 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %91

75:                                               ; preds = %72, %65
  %76 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %77 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = call i64 @ether_addr_equal(i32 %78, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  %84 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i64 @ether_addr_equal(i32 %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %12, align 8
  store %struct.libipw_frag_entry* %90, %struct.libipw_frag_entry** %6, align 8
  br label %96

91:                                               ; preds = %82, %75, %72, %59, %54
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %14

95:                                               ; preds = %14
  store %struct.libipw_frag_entry* null, %struct.libipw_frag_entry** %6, align 8
  br label %96

96:                                               ; preds = %95, %89
  %97 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %6, align 8
  ret %struct.libipw_frag_entry* %97
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @LIBIPW_DEBUG_FRAG(i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
