; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.brcmf_bcdc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcmf_bcdc = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"struct brcmf_proto_bcdc is not correctly defined\0A\00", align 1
@brcmf_proto_bcdc_hdrpull = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_query_dcmd = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_set_dcmd = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_tx_queue_data = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_txdata = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_configure_addr_mode = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_delete_peer = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_add_tdls_peer = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_rxreorder = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_add_if = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_del_if = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_reset_if = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_init_done = common dso_local global i32 0, align 4
@brcmf_proto_bcdc_debugfs_create = common dso_local global i32 0, align 4
@BCDC_HEADER_LEN = common dso_local global i64 0, align 8
@BRCMF_PROT_FW_SIGNAL_MAX_TXBYTES = common dso_local global i64 0, align 8
@BRCMF_DCMD_MAXLEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_proto_bcdc_attach(%struct.brcmf_pub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca %struct.brcmf_bcdc*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.brcmf_bcdc* @kzalloc(i32 16, i32 %5)
  store %struct.brcmf_bcdc* %6, %struct.brcmf_bcdc** %4, align 8
  %7 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %4, align 8
  %8 = icmp ne %struct.brcmf_bcdc* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %113

10:                                               ; preds = %1
  %11 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %4, align 8
  %12 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %11, i32 0, i32 1
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = ptrtoint i32* %13 to i64
  %15 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %4, align 8
  %16 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %21 = call i32 @bphy_err(%struct.brcmf_pub* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %113

22:                                               ; preds = %10
  %23 = load i32, i32* @brcmf_proto_bcdc_hdrpull, align 4
  %24 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %25 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 14
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @brcmf_proto_bcdc_query_dcmd, align 4
  %29 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %30 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 13
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* @brcmf_proto_bcdc_set_dcmd, align 4
  %34 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %35 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 12
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @brcmf_proto_bcdc_tx_queue_data, align 4
  %39 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %40 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 11
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* @brcmf_proto_bcdc_txdata, align 4
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %45 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 10
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @brcmf_proto_bcdc_configure_addr_mode, align 4
  %49 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %50 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 9
  store i32 %48, i32* %52, align 8
  %53 = load i32, i32* @brcmf_proto_bcdc_delete_peer, align 4
  %54 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %55 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 8
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @brcmf_proto_bcdc_add_tdls_peer, align 4
  %59 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %60 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 7
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* @brcmf_proto_bcdc_rxreorder, align 4
  %64 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %65 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* @brcmf_proto_bcdc_add_if, align 4
  %69 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %70 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  store i32 %68, i32* %72, align 8
  %73 = load i32, i32* @brcmf_proto_bcdc_del_if, align 4
  %74 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %75 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @brcmf_proto_bcdc_reset_if, align 4
  %79 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %80 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  store i32 %78, i32* %82, align 8
  %83 = load i32, i32* @brcmf_proto_bcdc_init_done, align 4
  %84 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %85 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* @brcmf_proto_bcdc_debugfs_create, align 4
  %89 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %90 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 8
  %93 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %4, align 8
  %94 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %95 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store %struct.brcmf_bcdc* %93, %struct.brcmf_bcdc** %97, align 8
  %98 = load i64, i64* @BCDC_HEADER_LEN, align 8
  %99 = load i64, i64* @BRCMF_PROT_FW_SIGNAL_MAX_TXBYTES, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %102 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  %107 = load i64, i64* @BRCMF_DCMD_MAXLEN, align 8
  %108 = add i64 %107, 4
  %109 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %110 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i64 %108, i64* %112, align 8
  store i32 0, i32* %2, align 4
  br label %118

113:                                              ; preds = %19, %9
  %114 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %4, align 8
  %115 = call i32 @kfree(%struct.brcmf_bcdc* %114)
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %22
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.brcmf_bcdc* @kzalloc(i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @kfree(%struct.brcmf_bcdc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
