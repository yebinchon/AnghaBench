; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_config_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32*, i64**, i32*, i32 }
%struct.rss_cfg_msg = type { i64, i32, i32, i32*, i32 }

@NIC_PF_RSSI_0_4097_RQ = common dso_local global i32 0, align 4
@NIC_PF_CPI_0_2047_CFG = common dso_local global i32 0, align 4
@NIC_PF_MPI_0_2047_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, %struct.rss_cfg_msg*)* @nic_config_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_config_rss(%struct.nicpf* %0, %struct.rss_cfg_msg* %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca %struct.rss_cfg_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store %struct.rss_cfg_msg* %1, %struct.rss_cfg_msg** %4, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %14 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %17 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %22 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %83, %2
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %30 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %26
  %35 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %36 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 3
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %34
  %46 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %47 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %46, i32 0, i32 1
  %48 = load i64**, i64*** %47, align 8
  %49 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %50 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64*, i64** %48, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %5, align 8
  br label %62

58:                                               ; preds = %34
  %59 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %60 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %58, %45
  %63 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %64 = load i32, i32* @NIC_PF_RSSI_0_4097_RQ, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 3
  %67 = or i32 %64, %66
  %68 = load i64, i64* %5, align 8
  %69 = shl i64 %68, 3
  %70 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %71 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 7
  %77 = sext i32 %76 to i64
  %78 = or i64 %69, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @nic_reg_write(%struct.nicpf* %63, i32 %67, i32 %79)
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %62
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %26

86:                                               ; preds = %26
  %87 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %88 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %91 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %8, align 4
  %95 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %96 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @pass1_silicon(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %86
  %101 = load i32, i32* @NIC_PF_CPI_0_2047_CFG, align 4
  store i32 %101, i32* %11, align 4
  br label %104

102:                                              ; preds = %86
  %103 = load i32, i32* @NIC_PF_MPI_0_2047_CFG, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %8, align 4
  %108 = shl i32 %107, 3
  %109 = or i32 %106, %108
  %110 = call i32 @nic_reg_read(%struct.nicpf* %105, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = and i64 %112, -15728641
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %7, align 4
  %115 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %116 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %117, 20
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %8, align 4
  %124 = shl i32 %123, 3
  %125 = or i32 %122, %124
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @nic_reg_write(%struct.nicpf* %121, i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

declare dso_local i64 @pass1_silicon(i32) #1

declare dso_local i32 @nic_reg_read(%struct.nicpf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
