; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_add_tlv_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_add_tlv_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dump_tl = type { i32 }
%struct.nfp_dumpspec_csr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NFP_IND_NUM_CONTEXTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)* @nfp_add_tlv_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_add_tlv_size(%struct.nfp_pf* %0, %struct.nfp_dump_tl* %1, i8* %2) #0 {
  %4 = alloca %struct.nfp_pf*, align 8
  %5 = alloca %struct.nfp_dump_tl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfp_dumpspec_csr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %4, align 8
  store %struct.nfp_dump_tl* %1, %struct.nfp_dump_tl** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  switch i32 %15, label %102 [
    i32 134, label %16
    i32 135, label %22
    i32 128, label %22
    i32 130, label %22
    i32 131, label %47
    i32 129, label %74
    i32 133, label %81
    i32 132, label %95
  ]

16:                                               ; preds = %3
  %17 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %18 = call i32 @nfp_calc_fwname_tlv_size(%struct.nfp_pf* %17)
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %108

22:                                               ; preds = %3, %3, %3
  %23 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %24 = bitcast %struct.nfp_dump_tl* %23 to %struct.nfp_dumpspec_csr*
  store %struct.nfp_dumpspec_csr* %24, %struct.nfp_dumpspec_csr** %7, align 8
  %25 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %7, align 8
  %26 = call i32 @nfp_csr_spec_valid(%struct.nfp_dumpspec_csr* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %30 = call i32 @nfp_dump_error_tlv_size(%struct.nfp_dump_tl* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %46

34:                                               ; preds = %22
  %35 = call i32 @ALIGN8(i32 4)
  %36 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %7, align 8
  %37 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = call i32 @ALIGN8(i32 %40)
  %42 = add nsw i32 %35, %41
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %34, %28
  br label %108

47:                                               ; preds = %3
  %48 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %49 = bitcast %struct.nfp_dump_tl* %48 to %struct.nfp_dumpspec_csr*
  store %struct.nfp_dumpspec_csr* %49, %struct.nfp_dumpspec_csr** %7, align 8
  %50 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %7, align 8
  %51 = call i32 @nfp_csr_spec_valid(%struct.nfp_dumpspec_csr* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %55 = call i32 @nfp_dump_error_tlv_size(%struct.nfp_dump_tl* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %73

59:                                               ; preds = %47
  %60 = call i32 @ALIGN8(i32 4)
  %61 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %7, align 8
  %62 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = load i32, i32* @NFP_IND_NUM_CONTEXTS, align 4
  %67 = mul nsw i32 %65, %66
  %68 = call i32 @ALIGN8(i32 %67)
  %69 = add nsw i32 %60, %68
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %59, %53
  br label %108

74:                                               ; preds = %3
  %75 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %76 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %77 = call i32 @nfp_calc_rtsym_dump_sz(%struct.nfp_pf* %75, %struct.nfp_dump_tl* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %108

81:                                               ; preds = %3
  %82 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %83 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nfp_hwinfo_get_packed_str_size(i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ALIGN8(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = add i64 4, %88
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, %89
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  br label %108

95:                                               ; preds = %3
  %96 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %97 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %98 = call i32 @nfp_calc_hwinfo_field_sz(%struct.nfp_pf* %96, %struct.nfp_dump_tl* %97)
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %98
  store i32 %101, i32* %99, align 4
  br label %108

102:                                              ; preds = %3
  %103 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %104 = call i32 @nfp_dump_error_tlv_size(%struct.nfp_dump_tl* %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %95, %81, %74, %73, %46, %16
  ret i32 0
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @nfp_calc_fwname_tlv_size(%struct.nfp_pf*) #1

declare dso_local i32 @nfp_csr_spec_valid(%struct.nfp_dumpspec_csr*) #1

declare dso_local i32 @nfp_dump_error_tlv_size(%struct.nfp_dump_tl*) #1

declare dso_local i32 @ALIGN8(i32) #1

declare dso_local i32 @nfp_calc_rtsym_dump_sz(%struct.nfp_pf*, %struct.nfp_dump_tl*) #1

declare dso_local i32 @nfp_hwinfo_get_packed_str_size(i32) #1

declare dso_local i32 @nfp_calc_hwinfo_field_sz(%struct.nfp_pf*, %struct.nfp_dump_tl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
