; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_init_dest_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_init_dest_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ce_attr = type { i32 }
%struct.ath10k_ce = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { %struct.ath10k_ce_ring* }
%struct.ath10k_ce_ring = type { i32, i32, i32, i32, i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"boot ce dest ring id %d entries %d base_addr %pK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, %struct.ce_attr*)* @ath10k_ce_init_dest_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ce_init_dest_ring(%struct.ath10k* %0, i32 %1, %struct.ce_attr* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ce_attr*, align 8
  %7 = alloca %struct.ath10k_ce*, align 8
  %8 = alloca %struct.ath10k_ce_pipe*, align 8
  %9 = alloca %struct.ath10k_ce_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ce_attr* %2, %struct.ce_attr** %6, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %12)
  store %struct.ath10k_ce* %13, %struct.ath10k_ce** %7, align 8
  %14 = load %struct.ath10k_ce*, %struct.ath10k_ce** %7, align 8
  %15 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %14, i32 0, i32 0
  %16 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %16, i64 %18
  store %struct.ath10k_ce_pipe* %19, %struct.ath10k_ce_pipe** %8, align 8
  %20 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %8, align 8
  %21 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %20, i32 0, i32 0
  %22 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %21, align 8
  store %struct.ath10k_ce_ring* %22, %struct.ath10k_ce_ring** %9, align 8
  %23 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ath10k_ce_base_address(%struct.ath10k* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ce_attr*, %struct.ce_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @roundup_pow_of_two(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %37 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32 %38, i32 0, i32 %42)
  br label %53

44:                                               ; preds = %3
  %45 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %46 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i32 %47, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %44, %35
  %54 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ath10k_ce_dest_ring_read_index_get(%struct.ath10k* %54, i32 %55)
  %57 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %58 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %60 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %63 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @ath10k_ce_dest_ring_write_index_get(%struct.ath10k* %66, i32 %67)
  %69 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %70 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %72 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %75 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %81 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ath10k_ce_dest_ring_base_addr_set(%struct.ath10k* %78, i32 %79, i32 %82)
  %84 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @ath10k_ce_dest_ring_size_set(%struct.ath10k* %84, i32 %85, i32 %86)
  %88 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ath10k_ce_dest_ring_byte_swap_set(%struct.ath10k* %88, i32 %89, i32 0)
  %91 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @ath10k_ce_dest_ring_lowmark_set(%struct.ath10k* %91, i32 %92, i32 0)
  %94 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @ath10k_ce_dest_ring_highmark_set(%struct.ath10k* %94, i32 %95, i32 %96)
  %98 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %99 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %9, align 8
  %103 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ath10k_dbg(%struct.ath10k* %98, i32 %99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %104)
  ret i32 0
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ce_base_address(%struct.ath10k*, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ath10k_ce_dest_ring_read_index_get(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_dest_ring_write_index_get(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_dest_ring_base_addr_set(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_ce_dest_ring_size_set(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_ce_dest_ring_byte_swap_set(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_ce_dest_ring_lowmark_set(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_ce_dest_ring_highmark_set(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
