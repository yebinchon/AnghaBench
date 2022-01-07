; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_ldx_data_from_pktcache_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_ldx_data_from_pktcache_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@REG_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32)* @mem_ldx_data_from_pktcache_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_ldx_data_from_pktcache_aligned(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %14 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %16, %20
  %22 = load i32, i32* @REG_WIDTH, align 4
  %23 = udiv i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %25 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 2
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @reg_both(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @reg_both(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @reg_xfer(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @REG_WIDTH, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %3
  %40 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @wrp_reg_subpart(%struct.nfp_prog* %40, i32 %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %46 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @wrp_zext(%struct.nfp_prog* %45, %struct.nfp_insn_meta* %46, i32 %47)
  br label %75

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @REG_WIDTH, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @wrp_mov(%struct.nfp_prog* %54, i32 %55, i32 %56)
  %58 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %59 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @wrp_zext(%struct.nfp_prog* %58, %struct.nfp_insn_meta* %59, i32 %60)
  br label %74

62:                                               ; preds = %49
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @reg_xfer(i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @wrp_mov(%struct.nfp_prog* %66, i32 %67, i32 %68)
  %70 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @wrp_mov(%struct.nfp_prog* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %62, %53
  br label %75

75:                                               ; preds = %74, %39
  ret i32 0
}

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_xfer(i32) #1

declare dso_local i32 @wrp_reg_subpart(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @wrp_zext(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
