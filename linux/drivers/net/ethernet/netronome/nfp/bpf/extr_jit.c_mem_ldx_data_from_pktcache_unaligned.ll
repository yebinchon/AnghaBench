; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_ldx_data_from_pktcache_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_ldx_data_from_pktcache_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@REG_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32)* @mem_ldx_data_from_pktcache_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_ldx_data_from_pktcache_unaligned(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %31 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @REG_WIDTH, align 4
  %38 = udiv i32 %36, %37
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @REG_WIDTH, align 4
  %41 = urem i32 %39, %40
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add i32 %42, 1
  %44 = call i32 @reg_both(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @reg_both(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @reg_xfer(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @REG_WIDTH, align 4
  %51 = load i32, i32* %18, align 4
  %52 = sub i32 %50, %51
  %53 = icmp ugt i32 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %3
  %55 = load i32, i32* @REG_WIDTH, align 4
  %56 = load i32, i32* %18, align 4
  %57 = sub i32 %55, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @REG_WIDTH, align 4
  %63 = mul i32 2, %62
  %64 = load i32, i32* %18, align 4
  %65 = sub i32 %63, %64
  %66 = icmp ugt i32 %61, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @REG_WIDTH, align 4
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %67, %54
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @wrp_reg_subpart(%struct.nfp_prog* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %70
  %80 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %81 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @wrp_zext(%struct.nfp_prog* %80, %struct.nfp_insn_meta* %81, i32 %82)
  store i32 0, i32* %4, align 4
  br label %131

84:                                               ; preds = %70
  %85 = load i32, i32* %17, align 4
  %86 = add i32 %85, 1
  %87 = call i32 @reg_xfer(i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @REG_WIDTH, align 4
  %90 = icmp ule i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @wrp_reg_or_subpart(%struct.nfp_prog* %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %99 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @wrp_zext(%struct.nfp_prog* %98, %struct.nfp_insn_meta* %99, i32 %100)
  br label %130

102:                                              ; preds = %84
  %103 = load i32, i32* %17, align 4
  %104 = add i32 %103, 2
  %105 = call i32 @reg_xfer(i32 %104)
  store i32 %105, i32* %19, align 4
  %106 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @REG_WIDTH, align 4
  %110 = load i32, i32* %15, align 4
  %111 = sub i32 %109, %110
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @wrp_reg_or_subpart(%struct.nfp_prog* %106, i32 %107, i32 %108, i32 %111, i32 %112)
  %114 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @REG_WIDTH, align 4
  %119 = load i32, i32* %15, align 4
  %120 = sub i32 %118, %119
  %121 = call i32 @wrp_reg_subpart(%struct.nfp_prog* %114, i32 %115, i32 %116, i32 %117, i32 %120)
  %122 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* @REG_WIDTH, align 4
  %126 = load i32, i32* %15, align 4
  %127 = sub i32 %125, %126
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @wrp_reg_or_subpart(%struct.nfp_prog* %122, i32 %123, i32 %124, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %102, %91
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %79
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_xfer(i32) #1

declare dso_local i32 @wrp_reg_subpart(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @wrp_zext(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @wrp_reg_or_subpart(%struct.nfp_prog*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
