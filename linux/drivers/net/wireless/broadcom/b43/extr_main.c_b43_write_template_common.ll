; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_write_template_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_write_template_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.b43_plcp_hdr4 = type { i64 }

@FCS_LEN = common dso_local global i64 0, align 8
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i64*, i32, i32, i32, i64)* @b43_write_template_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_write_template_common(%struct.b43_wldev* %0, i64* %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.b43_wldev*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.b43_plcp_hdr4, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %16 = getelementptr inbounds %struct.b43_plcp_hdr4, %struct.b43_plcp_hdr4* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @FCS_LEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @b43_generate_plcp_hdr(%struct.b43_plcp_hdr4* %15, i64 %20, i64 %21)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds %struct.b43_plcp_hdr4, %struct.b43_plcp_hdr4* %15, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @le32_to_cpu(i64 %26)
  %28 = call i32 @b43_ram_write(%struct.b43_wldev* %23, i32 %24, i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 16
  store i32 %37, i32* %14, align 4
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 24
  %43 = load i32, i32* %14, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %14, align 4
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @b43_ram_write(%struct.b43_wldev* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  store i32 2, i32* %13, align 4
  br label %53

53:                                               ; preds = %120, %6
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %125

57:                                               ; preds = %53
  %58 = load i64*, i64** %8, align 8
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 0
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %57
  %70 = load i64*, i64** %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 %76, 8
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %69, %57
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 2
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i64*, i64** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 16
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %85, %80
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 3
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i64*, i64** %8, align 8
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = shl i32 %108, 24
  %110 = load i32, i32* %14, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %101, %96
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 2
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @b43_ram_write(%struct.b43_wldev* %113, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %122, 4
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %13, align 4
  br label %53

125:                                              ; preds = %53
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %127 = load i32, i32* @B43_SHM_SHARED, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32 @b43_shm_write16(%struct.b43_wldev* %126, i32 %127, i32 %128, i32 %132)
  ret void
}

declare dso_local i32 @b43_generate_plcp_hdr(%struct.b43_plcp_hdr4*, i64, i64) #1

declare dso_local i32 @b43_ram_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
