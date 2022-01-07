; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_update_vs_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_update_vs_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_ie = type { i64, i8*, i8*, i32 }
%struct.ieee_types_header = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE_MAX_IE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MWIFIEX_AUTO_IDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.mwifiex_ie**, i32, i32, i32)* @mwifiex_update_vs_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_update_vs_ie(i32* %0, i32 %1, %struct.mwifiex_ie** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwifiex_ie**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee_types_header*, align 8
  %15 = alloca %struct.mwifiex_ie*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mwifiex_ie** %2, %struct.mwifiex_ie*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.mwifiex_ie**, %struct.mwifiex_ie*** %10, align 8
  %18 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %17, align 8
  store %struct.mwifiex_ie* %18, %struct.mwifiex_ie** %15, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32* @cfg80211_find_vendor_ie(i32 %19, i32 %20, i32* %21, i32 %22)
  store i32* %23, i32** %16, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %90

26:                                               ; preds = %6
  %27 = load %struct.mwifiex_ie**, %struct.mwifiex_ie*** %10, align 8
  %28 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %27, align 8
  %29 = icmp ne %struct.mwifiex_ie* %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mwifiex_ie* @kzalloc(i32 32, i32 %31)
  %33 = load %struct.mwifiex_ie**, %struct.mwifiex_ie*** %10, align 8
  store %struct.mwifiex_ie* %32, %struct.mwifiex_ie** %33, align 8
  %34 = load %struct.mwifiex_ie**, %struct.mwifiex_ie*** %10, align 8
  %35 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %34, align 8
  %36 = icmp ne %struct.mwifiex_ie* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %93

40:                                               ; preds = %30
  %41 = load %struct.mwifiex_ie**, %struct.mwifiex_ie*** %10, align 8
  %42 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %41, align 8
  store %struct.mwifiex_ie* %42, %struct.mwifiex_ie** %15, align 8
  br label %43

43:                                               ; preds = %40, %26
  %44 = load i32*, i32** %16, align 8
  %45 = bitcast i32* %44 to %struct.ieee_types_header*
  store %struct.ieee_types_header* %45, %struct.ieee_types_header** %14, align 8
  %46 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %15, align 8
  %47 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le16_to_cpu(i32 %48)
  %50 = load %struct.ieee_types_header*, %struct.ieee_types_header** %14, align 8
  %51 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = add nsw i64 %53, 2
  %55 = load i64, i64* @IEEE_MAX_IE_SIZE, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %93

60:                                               ; preds = %43
  %61 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %15, align 8
  %62 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %15, align 8
  %65 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @le16_to_cpu(i32 %66)
  %68 = add nsw i64 %63, %67
  %69 = load %struct.ieee_types_header*, %struct.ieee_types_header** %14, align 8
  %70 = load %struct.ieee_types_header*, %struct.ieee_types_header** %14, align 8
  %71 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 2
  %74 = call i32 @memcpy(i64 %68, %struct.ieee_types_header* %69, i64 %73)
  %75 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %15, align 8
  %76 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %75, i32 0, i32 3
  %77 = load %struct.ieee_types_header*, %struct.ieee_types_header** %14, align 8
  %78 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 2
  %81 = call i32 @le16_unaligned_add_cpu(i32* %76, i64 %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %15, align 8
  %85 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  %87 = call i8* @cpu_to_le16(i32 %86)
  %88 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %15, align 8
  %89 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %60, %6
  %91 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %15, align 8
  %92 = load %struct.mwifiex_ie**, %struct.mwifiex_ie*** %10, align 8
  store %struct.mwifiex_ie* %91, %struct.mwifiex_ie** %92, align 8
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %57, %37
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32* @cfg80211_find_vendor_ie(i32, i32, i32*, i32) #1

declare dso_local %struct.mwifiex_ie* @kzalloc(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i64, %struct.ieee_types_header*, i64) #1

declare dso_local i32 @le16_unaligned_add_cpu(i32*, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
