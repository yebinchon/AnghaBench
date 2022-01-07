; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_set_mac_flt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_set_mac_flt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { i32 }
%struct.enetc_cbd = type { i32, i8**, i8**, i32, i32 }

@ENETC_CBD_FLAGS_SF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_set_mac_flt_entry(%struct.enetc_si* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.enetc_si*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.enetc_cbd, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 @memset(%struct.enetc_cbd* %9, i32 0, i32 32)
  %13 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %9, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* @ENETC_CBD_FLAGS_SF, align 4
  %15 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %9, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %9, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %9, i32 0, i32 2
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 3
  store i8* %20, i8** %23, align 8
  %24 = call i32 @BIT(i32 31)
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %9, i32 0, i32 2
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %9, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %9, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %47 = call i32 @enetc_send_cmd(%struct.enetc_si* %46, %struct.enetc_cbd* %9)
  ret i32 %47
}

declare dso_local i32 @memset(%struct.enetc_cbd*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @enetc_send_cmd(%struct.enetc_si*, %struct.enetc_cbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
