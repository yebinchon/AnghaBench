; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_82xx_cache_tmpl_hdr_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_82xx_cache_tmpl_hdr_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_fw_dump = type { i32, i32, i32, i32, i32, i32, %struct.qlcnic_82xx_dump_template_hdr* }
%struct.qlcnic_82xx_dump_template_hdr = type { i32, i32, i32, i32, i32, i32, i32 }

@BIT_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_82xx_cache_tmpl_hdr_values(%struct.qlcnic_fw_dump* %0) #0 {
  %2 = alloca %struct.qlcnic_fw_dump*, align 8
  %3 = alloca %struct.qlcnic_82xx_dump_template_hdr*, align 8
  store %struct.qlcnic_fw_dump* %0, %struct.qlcnic_fw_dump** %2, align 8
  %4 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %4, i32 0, i32 6
  %6 = load %struct.qlcnic_82xx_dump_template_hdr*, %struct.qlcnic_82xx_dump_template_hdr** %5, align 8
  store %struct.qlcnic_82xx_dump_template_hdr* %6, %struct.qlcnic_82xx_dump_template_hdr** %3, align 8
  %7 = load %struct.qlcnic_82xx_dump_template_hdr*, %struct.qlcnic_82xx_dump_template_hdr** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, %struct.qlcnic_82xx_dump_template_hdr* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.qlcnic_82xx_dump_template_hdr*, %struct.qlcnic_82xx_dump_template_hdr** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, %struct.qlcnic_82xx_dump_template_hdr* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %2, align 8
  %16 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.qlcnic_82xx_dump_template_hdr*, %struct.qlcnic_82xx_dump_template_hdr** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, %struct.qlcnic_82xx_dump_template_hdr* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %2, align 8
  %21 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qlcnic_82xx_dump_template_hdr*, %struct.qlcnic_82xx_dump_template_hdr** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, %struct.qlcnic_82xx_dump_template_hdr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %2, align 8
  %26 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.qlcnic_82xx_dump_template_hdr*, %struct.qlcnic_82xx_dump_template_hdr** %3, align 8
  %28 = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, %struct.qlcnic_82xx_dump_template_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qlcnic_82xx_dump_template_hdr*, %struct.qlcnic_82xx_dump_template_hdr** %3, align 8
  %31 = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, %struct.qlcnic_82xx_dump_template_hdr* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.qlcnic_82xx_dump_template_hdr*, %struct.qlcnic_82xx_dump_template_hdr** %3, align 8
  %33 = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, %struct.qlcnic_82xx_dump_template_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %2, align 8
  %36 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.qlcnic_82xx_dump_template_hdr*, %struct.qlcnic_82xx_dump_template_hdr** %3, align 8
  %38 = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, %struct.qlcnic_82xx_dump_template_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BIT_0, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %2, align 8
  %46 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
