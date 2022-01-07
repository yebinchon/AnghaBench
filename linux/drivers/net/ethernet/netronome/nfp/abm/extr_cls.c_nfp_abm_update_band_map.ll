; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_cls.c_nfp_abm_update_band_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_cls.c_nfp_abm_update_band_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { i32, i32*, i32, %struct.nfp_abm* }
%struct.nfp_abm = type { i32, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm_link*)* @nfp_abm_update_band_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_update_band_map(%struct.nfp_abm_link* %0) #0 {
  %2 = alloca %struct.nfp_abm_link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_abm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %2, align 8
  %12 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %13 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %12, i32 0, i32 3
  %14 = load %struct.nfp_abm*, %struct.nfp_abm** %13, align 8
  store %struct.nfp_abm* %14, %struct.nfp_abm** %7, align 8
  %15 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %16 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %15, i32 0, i32 2
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %22 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nfp_abm*, %struct.nfp_abm** %7, align 8
  %24 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @order_base_2(i32 %25)
  %27 = call i32 @roundup_pow_of_two(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @BITS_PER_BYTE, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = udiv i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load %struct.nfp_abm*, %struct.nfp_abm** %7, align 8
  %39 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @order_base_2(i32 %40)
  %42 = sub nsw i32 8, %41
  store i32 %42, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %81, %1
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.nfp_abm*, %struct.nfp_abm** %7, align 8
  %46 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %43
  %50 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %51 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %5, align 4
  %55 = udiv i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32* %57, i32** %10, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %5, align 4
  %60 = urem i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = mul i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 @nfp_abm_find_band_for_prio(%struct.nfp_abm_link* %63, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %75, %76
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %49
  %82 = load i32, i32* %3, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %43

84:                                               ; preds = %43
  %85 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %86 = call i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link* %85)
  %87 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %88 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %89 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @nfp_abm_ctrl_prio_map_update(%struct.nfp_abm_link* %87, i32* %90)
  ret i32 %91
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @nfp_abm_find_band_for_prio(%struct.nfp_abm_link*, i32) #1

declare dso_local i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link*) #1

declare dso_local i32 @nfp_abm_ctrl_prio_map_update(%struct.nfp_abm_link*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
