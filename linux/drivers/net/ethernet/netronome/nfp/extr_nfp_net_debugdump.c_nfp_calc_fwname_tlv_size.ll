; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_calc_fwname_tlv_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_calc_fwname_tlv_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*)* @nfp_calc_fwname_tlv_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_calc_fwname_tlv_size(%struct.nfp_pf* %0) #0 {
  %2 = alloca %struct.nfp_pf*, align 8
  %3 = alloca i64, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %2, align 8
  %4 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @nfp_mip_name(i32 %6)
  %8 = call i64 @strlen(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @ALIGN8(i64 %10)
  %12 = sext i32 %11 to i64
  %13 = add i64 4, %12
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @nfp_mip_name(i32) #1

declare dso_local i32 @ALIGN8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
