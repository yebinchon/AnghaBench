; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_port_save_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_port_save_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_ethernet_port = type { i64, i8** }

@GMAC_STA_ADD0 = common dso_local global i64 0, align 8
@GMAC_STA_ADD1 = common dso_local global i64 0, align 8
@GMAC_STA_ADD2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gemini_ethernet_port*)* @gemini_port_save_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gemini_port_save_mac_addr(%struct.gemini_ethernet_port* %0) #0 {
  %2 = alloca %struct.gemini_ethernet_port*, align 8
  store %struct.gemini_ethernet_port* %0, %struct.gemini_ethernet_port** %2, align 8
  %3 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %2, align 8
  %4 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @GMAC_STA_ADD0, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl(i64 %7)
  %9 = call i8* @cpu_to_le32(i32 %8)
  %10 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %2, align 8
  %11 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %10, i32 0, i32 1
  %12 = load i8**, i8*** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  store i8* %9, i8** %13, align 8
  %14 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %2, align 8
  %15 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GMAC_STA_ADD1, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %2, align 8
  %22 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* %20, i8** %24, align 8
  %25 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %2, align 8
  %26 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GMAC_STA_ADD2, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %2, align 8
  %33 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  store i8* %31, i8** %35, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
