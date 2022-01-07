; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_indirect_csr_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_indirect_csr_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dumpspec_csr = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfp_dump_state = type { %struct.nfp_dump_csr* }
%struct.nfp_dump_csr = type { i8*, i8*, i32, %struct.TYPE_3__ }

@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@NFP_IND_NUM_CONTEXTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.nfp_dumpspec_csr*, %struct.nfp_dump_state*)* @nfp_dump_indirect_csr_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_dump_indirect_csr_range(%struct.nfp_pf* %0, %struct.nfp_dumpspec_csr* %1, %struct.nfp_dump_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca %struct.nfp_dumpspec_csr*, align 8
  %7 = alloca %struct.nfp_dump_state*, align 8
  %8 = alloca %struct.nfp_dump_csr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store %struct.nfp_dumpspec_csr* %1, %struct.nfp_dumpspec_csr** %6, align 8
  store %struct.nfp_dump_state* %2, %struct.nfp_dump_state** %7, align 8
  %17 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %18 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %17, i32 0, i32 0
  %19 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %18, align 8
  store %struct.nfp_dump_csr* %19, %struct.nfp_dump_csr** %8, align 8
  %20 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %21 = call i32 @nfp_csr_spec_valid(%struct.nfp_dumpspec_csr* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %24, i32 0, i32 2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %29 = call i32 @nfp_dump_error_tlv(%struct.TYPE_4__* %25, i32 %27, %struct.nfp_dump_state* %28)
  store i32 %29, i32* %4, align 4
  br label %127

30:                                               ; preds = %3
  %31 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %32 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  %35 = load i32, i32* @BITS_PER_BYTE, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = call i32 @ALIGN8(i32 32)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %39 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = load i32, i32* @NFP_IND_NUM_CONTEXTS, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @ALIGN8(i32 %46)
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %50 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %49, i32 0, i32 0
  %51 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %51, i64 %53
  %55 = bitcast %struct.nfp_dump_csr* %54 to i8*
  store i8* %55, i8** %15, align 8
  %56 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %57 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %63 = call i32 @nfp_add_tlv(i32 %60, i32 %61, %struct.nfp_dump_state* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %30
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %4, align 4
  br label %127

68:                                               ; preds = %30
  %69 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %8, align 8
  %70 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %69, i32 0, i32 3
  %71 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %72 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %71, i32 0, i32 0
  %73 = bitcast %struct.TYPE_3__* %70 to i8*
  %74 = bitcast %struct.TYPE_3__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 8, i1 false)
  %75 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %76 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %8, align 8
  %79 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %81 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be32_to_cpu(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %87 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be32_to_cpu(i32 %89)
  %91 = add nsw i32 %85, %90
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %116, %68
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %92
  %97 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %98 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @nfp_read_all_indirect_csr_ctx(i32 %99, %struct.nfp_dumpspec_csr* %100, i32 %101, i32 %102, i8* %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %96
  %108 = load i32, i32* %16, align 4
  %109 = call i8* @cpu_to_be32(i32 %108)
  %110 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %8, align 8
  %111 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i8* @cpu_to_be32(i32 %112)
  %114 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %8, align 8
  %115 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %126

116:                                              ; preds = %96
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @NFP_IND_NUM_CONTEXTS, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i8*, i8** %15, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr i8, i8* %123, i64 %124
  store i8* %125, i8** %15, align 8
  br label %92

126:                                              ; preds = %107, %92
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %66, %23
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @nfp_csr_spec_valid(%struct.nfp_dumpspec_csr*) #1

declare dso_local i32 @nfp_dump_error_tlv(%struct.TYPE_4__*, i32, %struct.nfp_dump_state*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ALIGN8(i32) #1

declare dso_local i32 @nfp_add_tlv(i32, i32, %struct.nfp_dump_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nfp_read_all_indirect_csr_ctx(i32, %struct.nfp_dumpspec_csr*, i32, i32, i8*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
