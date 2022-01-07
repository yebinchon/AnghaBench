; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_ldx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_ldx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i64 }
%struct.nfp_insn_meta = type { %struct.TYPE_6__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

@PTR_TO_CTX = common dso_local global i64 0, align 8
@BPF_PROG_TYPE_XDP = common dso_local global i64 0, align 8
@PTR_TO_PACKET = common dso_local global i64 0, align 8
@PTR_TO_STACK = common dso_local global i64 0, align 8
@PTR_TO_MAP_VALUE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32)* @mem_ldx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_ldx(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %9 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %14 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %15 = call i32 @nfp_cpp_memcpy(%struct.nfp_prog* %13, %struct.nfp_insn_meta* %14)
  store i32 %15, i32* %4, align 4
  br label %109

16:                                               ; preds = %3
  %17 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %18 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PTR_TO_CTX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %25 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BPF_PROG_TYPE_XDP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %31 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mem_ldx_xdp(%struct.nfp_prog* %30, %struct.nfp_insn_meta* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %109

34:                                               ; preds = %23
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %36 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mem_ldx_skb(%struct.nfp_prog* %35, %struct.nfp_insn_meta* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %109

39:                                               ; preds = %16
  %40 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %41 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PTR_TO_PACKET, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %39
  %47 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %48 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %54 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %60 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %61 = call i32 @mem_ldx_data_init_pktcache(%struct.nfp_prog* %59, %struct.nfp_insn_meta* %60)
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %64 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @mem_ldx_data_from_pktcache(%struct.nfp_prog* %63, %struct.nfp_insn_meta* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %109

67:                                               ; preds = %46
  %68 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %69 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @mem_ldx_data(%struct.nfp_prog* %68, %struct.nfp_insn_meta* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %109

72:                                               ; preds = %39
  %73 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %74 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PTR_TO_STACK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %81 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %84 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %88 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %86, %91
  %93 = call i32 @mem_ldx_stack(%struct.nfp_prog* %80, %struct.nfp_insn_meta* %81, i32 %82, i64 %92)
  store i32 %93, i32* %4, align 4
  br label %109

94:                                               ; preds = %72
  %95 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %96 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PTR_TO_MAP_VALUE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %103 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @mem_ldx_emem(%struct.nfp_prog* %102, %struct.nfp_insn_meta* %103, i32 %104)
  store i32 %105, i32* %4, align 4
  br label %109

106:                                              ; preds = %94
  %107 = load i32, i32* @EOPNOTSUPP, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %101, %79, %67, %62, %34, %29, %12
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @nfp_cpp_memcpy(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @mem_ldx_xdp(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @mem_ldx_skb(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @mem_ldx_data_init_pktcache(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @mem_ldx_data_from_pktcache(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @mem_ldx_data(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @mem_ldx_stack(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32, i64) #1

declare dso_local i32 @mem_ldx_emem(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
