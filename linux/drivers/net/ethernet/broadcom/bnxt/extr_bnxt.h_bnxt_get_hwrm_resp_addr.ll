; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.h_bnxt_get_hwrm_resp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.h_bnxt_get_hwrm_resp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i8*, i8* }
%struct.input = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bnxt*, i8*)* @bnxt_get_hwrm_resp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bnxt_get_hwrm_resp_addr(%struct.bnxt* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i8*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.input*
  %9 = call i64 @bnxt_hwrm_kong_chnl(%struct.bnxt* %6, %struct.input* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %3, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i8*, i8** %3, align 8
  ret i8* %20
}

declare dso_local i64 @bnxt_hwrm_kong_chnl(%struct.bnxt*, %struct.input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
