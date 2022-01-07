; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_configure_arp_nd_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_configure_arp_nd_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32 }

@BRCMF_ARP_OL_AGENT = common dso_local global i32 0, align 4
@BRCMF_ARP_OL_PEER_AUTO_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"arp_ol\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to set ARP offload mode to 0x%x, err = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"arpoe\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"failed to configure (%d) ARP offload err = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"successfully configured (%d) ARP offload to 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ndoe\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"failed to configure (%d) ND offload err = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"successfully configured (%d) ND offload to 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_configure_arp_nd_offload(%struct.brcmf_if* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @BRCMF_ARP_OL_AGENT, align 4
  %11 = load i32, i32* @BRCMF_ARP_OL_PEER_AUTO_REPLY, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @TRACE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @brcmf_dbg(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  br label %42

25:                                               ; preds = %14
  %26 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @TRACE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @brcmf_dbg(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %34)
  br label %41

36:                                               ; preds = %25
  %37 = load i32, i32* @TRACE, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @brcmf_dbg(i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* @TRACE, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @brcmf_dbg(i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %50, i32 %51)
  br label %58

53:                                               ; preds = %42
  %54 = load i32, i32* @TRACE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @brcmf_dbg(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
