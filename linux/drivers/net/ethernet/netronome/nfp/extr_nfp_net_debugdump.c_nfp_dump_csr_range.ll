; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_csr_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_csr_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dumpspec_csr = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfp_dump_state = type { %struct.nfp_dump_csr* }
%struct.nfp_dump_csr = type { i8*, i8*, i32, %struct.TYPE_3__ }

@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.nfp_dumpspec_csr*, %struct.nfp_dump_state*)* @nfp_dump_csr_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_dump_csr_range(%struct.nfp_pf* %0, %struct.nfp_dumpspec_csr* %1, %struct.nfp_dump_state* %2) #0 {
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
  %17 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store %struct.nfp_dumpspec_csr* %1, %struct.nfp_dumpspec_csr** %6, align 8
  store %struct.nfp_dump_state* %2, %struct.nfp_dump_state** %7, align 8
  %18 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %19 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %18, i32 0, i32 0
  %20 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %19, align 8
  store %struct.nfp_dump_csr* %20, %struct.nfp_dump_csr** %8, align 8
  %21 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %22 = call i32 @nfp_csr_spec_valid(%struct.nfp_dumpspec_csr* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %26 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %25, i32 0, i32 2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %30 = call i32 @nfp_dump_error_tlv(%struct.TYPE_4__* %26, i32 %28, %struct.nfp_dump_state* %29)
  store i32 %30, i32* %4, align 4
  br label %151

31:                                               ; preds = %3
  %32 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %33 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  %36 = load i32, i32* @BITS_PER_BYTE, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = call i32 @ALIGN8(i32 32)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %41 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = call i32 @ALIGN8(i32 %44)
  %46 = add nsw i32 %39, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %48 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %47, i32 0, i32 0
  %49 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %49, i64 %51
  %53 = bitcast %struct.nfp_dump_csr* %52 to i8*
  store i8* %53, i8** %15, align 8
  %54 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %55 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %61 = call i32 @nfp_add_tlv(i32 %58, i32 %59, %struct.nfp_dump_state* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %31
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %4, align 4
  br label %151

66:                                               ; preds = %31
  %67 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %8, align 8
  %68 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %67, i32 0, i32 3
  %69 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %70 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %69, i32 0, i32 0
  %71 = bitcast %struct.TYPE_3__* %68 to i8*
  %72 = bitcast %struct.TYPE_3__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %74 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %8, align 8
  %77 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %79 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @nfp_get_numeric_cpp_id(i32* %80)
  store i32 %81, i32* %16, align 4
  %82 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %83 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be32_to_cpu(i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %89 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  %93 = add nsw i32 %87, %92
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %142, %66
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %150

98:                                               ; preds = %94
  %99 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %6, align 8
  %100 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i64 @is_xpb_read(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %106 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i8*, i8** %15, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = call i32 @nfp_xpb_readl(i32 %107, i32 %108, i32* %110)
  store i32 %111, i32* %17, align 4
  br label %130

112:                                              ; preds = %98
  %113 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %114 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @nfp_cpp_read(i32 %115, i32 %116, i32 %117, i8* %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %128

125:                                              ; preds = %112
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  br label %128

128:                                              ; preds = %125, %124
  %129 = phi i32 [ 0, %124 ], [ %127, %125 ]
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %128, %104
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  %135 = call i8* @cpu_to_be32(i32 %134)
  %136 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %8, align 8
  %137 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i8* @cpu_to_be32(i32 %138)
  %140 = load %struct.nfp_dump_csr*, %struct.nfp_dump_csr** %8, align 8
  %141 = getelementptr inbounds %struct.nfp_dump_csr, %struct.nfp_dump_csr* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %150

142:                                              ; preds = %130
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i8*, i8** %15, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr i8, i8* %147, i64 %148
  store i8* %149, i8** %15, align 8
  br label %94

150:                                              ; preds = %133, %94
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %64, %24
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @nfp_csr_spec_valid(%struct.nfp_dumpspec_csr*) #1

declare dso_local i32 @nfp_dump_error_tlv(%struct.TYPE_4__*, i32, %struct.nfp_dump_state*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ALIGN8(i32) #1

declare dso_local i32 @nfp_add_tlv(i32, i32, %struct.nfp_dump_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nfp_get_numeric_cpp_id(i32*) #1

declare dso_local i64 @is_xpb_read(i32*) #1

declare dso_local i32 @nfp_xpb_readl(i32, i32, i32*) #1

declare dso_local i32 @nfp_cpp_read(i32, i32, i32, i8*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
