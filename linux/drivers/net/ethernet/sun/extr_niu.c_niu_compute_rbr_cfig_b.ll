; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_compute_rbr_cfig_b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_compute_rbr_cfig_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_ring_info = type { i32, i32* }

@RBR_BLKSIZE_4K = common dso_local global i32 0, align 4
@RBR_CFIG_B_BLKSIZE_SHIFT = common dso_local global i32 0, align 4
@RBR_BLKSIZE_8K = common dso_local global i32 0, align 4
@RBR_BLKSIZE_16K = common dso_local global i32 0, align 4
@RBR_BLKSIZE_32K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RBR_CFIG_B_VLD2 = common dso_local global i32 0, align 4
@RBR_BUFSZ2_2K = common dso_local global i32 0, align 4
@RBR_CFIG_B_BUFSZ2_SHIFT = common dso_local global i32 0, align 4
@RBR_BUFSZ2_4K = common dso_local global i32 0, align 4
@RBR_BUFSZ2_8K = common dso_local global i32 0, align 4
@RBR_BUFSZ2_16K = common dso_local global i32 0, align 4
@RBR_CFIG_B_VLD1 = common dso_local global i32 0, align 4
@RBR_BUFSZ1_1K = common dso_local global i32 0, align 4
@RBR_CFIG_B_BUFSZ1_SHIFT = common dso_local global i32 0, align 4
@RBR_BUFSZ1_2K = common dso_local global i32 0, align 4
@RBR_BUFSZ1_4K = common dso_local global i32 0, align 4
@RBR_BUFSZ1_8K = common dso_local global i32 0, align 4
@RBR_CFIG_B_VLD0 = common dso_local global i32 0, align 4
@RBR_BUFSZ0_256 = common dso_local global i32 0, align 4
@RBR_CFIG_B_BUFSZ0_SHIFT = common dso_local global i32 0, align 4
@RBR_BUFSZ0_512 = common dso_local global i32 0, align 4
@RBR_BUFSZ0_1K = common dso_local global i32 0, align 4
@RBR_BUFSZ0_2K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx_ring_info*, i32*)* @niu_compute_rbr_cfig_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_compute_rbr_cfig_b(%struct.rx_ring_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.rx_ring_info* %0, %struct.rx_ring_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %9 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %35 [
    i32 4096, label %11
    i32 8192, label %17
    i32 16384, label %23
    i32 32768, label %29
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @RBR_BLKSIZE_4K, align 4
  %13 = load i32, i32* @RBR_CFIG_B_BLKSIZE_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* @RBR_BLKSIZE_8K, align 4
  %19 = load i32, i32* @RBR_CFIG_B_BLKSIZE_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* @RBR_BLKSIZE_16K, align 4
  %25 = load i32, i32* @RBR_CFIG_B_BLKSIZE_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load i32, i32* @RBR_BLKSIZE_32K, align 4
  %31 = load i32, i32* @RBR_CFIG_B_BLKSIZE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %149

38:                                               ; preds = %29, %23, %17, %11
  %39 = load i32, i32* @RBR_CFIG_B_VLD2, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %43 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %71 [
    i32 2048, label %47
    i32 4096, label %53
    i32 8192, label %59
    i32 16384, label %65
  ]

47:                                               ; preds = %38
  %48 = load i32, i32* @RBR_BUFSZ2_2K, align 4
  %49 = load i32, i32* @RBR_CFIG_B_BUFSZ2_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %74

53:                                               ; preds = %38
  %54 = load i32, i32* @RBR_BUFSZ2_4K, align 4
  %55 = load i32, i32* @RBR_CFIG_B_BUFSZ2_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %74

59:                                               ; preds = %38
  %60 = load i32, i32* @RBR_BUFSZ2_8K, align 4
  %61 = load i32, i32* @RBR_CFIG_B_BUFSZ2_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %74

65:                                               ; preds = %38
  %66 = load i32, i32* @RBR_BUFSZ2_16K, align 4
  %67 = load i32, i32* @RBR_CFIG_B_BUFSZ2_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %74

71:                                               ; preds = %38
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %149

74:                                               ; preds = %65, %59, %53, %47
  %75 = load i32, i32* @RBR_CFIG_B_VLD1, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %79 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %107 [
    i32 1024, label %83
    i32 2048, label %89
    i32 4096, label %95
    i32 8192, label %101
  ]

83:                                               ; preds = %74
  %84 = load i32, i32* @RBR_BUFSZ1_1K, align 4
  %85 = load i32, i32* @RBR_CFIG_B_BUFSZ1_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %110

89:                                               ; preds = %74
  %90 = load i32, i32* @RBR_BUFSZ1_2K, align 4
  %91 = load i32, i32* @RBR_CFIG_B_BUFSZ1_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %110

95:                                               ; preds = %74
  %96 = load i32, i32* @RBR_BUFSZ1_4K, align 4
  %97 = load i32, i32* @RBR_CFIG_B_BUFSZ1_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %110

101:                                              ; preds = %74
  %102 = load i32, i32* @RBR_BUFSZ1_8K, align 4
  %103 = load i32, i32* @RBR_CFIG_B_BUFSZ1_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %110

107:                                              ; preds = %74
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %149

110:                                              ; preds = %101, %95, %89, %83
  %111 = load i32, i32* @RBR_CFIG_B_VLD0, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %115 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %143 [
    i32 256, label %119
    i32 512, label %125
    i32 1024, label %131
    i32 2048, label %137
  ]

119:                                              ; preds = %110
  %120 = load i32, i32* @RBR_BUFSZ0_256, align 4
  %121 = load i32, i32* @RBR_CFIG_B_BUFSZ0_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %146

125:                                              ; preds = %110
  %126 = load i32, i32* @RBR_BUFSZ0_512, align 4
  %127 = load i32, i32* @RBR_CFIG_B_BUFSZ0_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %146

131:                                              ; preds = %110
  %132 = load i32, i32* @RBR_BUFSZ0_1K, align 4
  %133 = load i32, i32* @RBR_CFIG_B_BUFSZ0_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %146

137:                                              ; preds = %110
  %138 = load i32, i32* @RBR_BUFSZ0_2K, align 4
  %139 = load i32, i32* @RBR_CFIG_B_BUFSZ0_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %146

143:                                              ; preds = %110
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %149

146:                                              ; preds = %137, %131, %125, %119
  %147 = load i32, i32* %6, align 4
  %148 = load i32*, i32** %5, align 8
  store i32 %147, i32* %148, align 4
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %146, %143, %107, %71, %35
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
