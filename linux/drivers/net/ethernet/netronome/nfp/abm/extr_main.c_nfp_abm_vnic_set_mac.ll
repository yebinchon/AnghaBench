; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_vnic_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_vnic_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.nfp_eth_table_port* }
%struct.nfp_eth_table_port = type { i32 }
%struct.nfp_abm = type { i32 }
%struct.nfp_net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nfp_nsp = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No entry for persistent MAC address\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"eth%u.mac.pf%u\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Failed to access the NSP for persistent MAC address: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"NSP doesn't support PF MAC generation\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Reading persistent MAC address failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Can't parse persistent MAC address (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_pf*, %struct.nfp_abm*, %struct.nfp_net*, i32)* @nfp_abm_vnic_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_vnic_set_mac(%struct.nfp_pf* %0, %struct.nfp_abm* %1, %struct.nfp_net* %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca %struct.nfp_abm*, align 8
  %7 = alloca %struct.nfp_net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_eth_table_port*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfp_nsp*, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store %struct.nfp_abm* %1, %struct.nfp_abm** %6, align 8
  store %struct.nfp_net* %2, %struct.nfp_net** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %17 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %20, i64 %22
  store %struct.nfp_eth_table_port* %23, %struct.nfp_eth_table_port** %9, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %30 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ugt i32 %28, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %4
  %36 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %37 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @nfp_warn(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %41 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @eth_hw_addr_random(%struct.TYPE_6__* %43)
  store i32 1, i32* %15, align 4
  br label %142

45:                                               ; preds = %4
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %47 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %9, align 8
  %48 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %51 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snprintf(i8* %46, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %55 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.nfp_nsp* @nfp_nsp_open(i32 %56)
  store %struct.nfp_nsp* %57, %struct.nfp_nsp** %12, align 8
  %58 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %59 = call i64 @IS_ERR(%struct.nfp_nsp* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %45
  %62 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %63 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %66 = call i8* @PTR_ERR(%struct.nfp_nsp* %65)
  %67 = call i32 (i32, i8*, ...) @nfp_warn(i32 %64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %69 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @eth_hw_addr_random(%struct.TYPE_6__* %71)
  store i32 1, i32* %15, align 4
  br label %142

73:                                               ; preds = %45
  %74 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %75 = call i32 @nfp_nsp_has_hwinfo_lookup(%struct.nfp_nsp* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %79 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @nfp_warn(i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %83 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 @eth_hw_addr_random(%struct.TYPE_6__* %85)
  store i32 1, i32* %15, align 4
  br label %142

87:                                               ; preds = %73
  %88 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %90 = call i32 @nfp_nsp_hwinfo_lookup(%struct.nfp_nsp* %88, i8* %89, i32 32)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %92 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %91)
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %97 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 (i32, i8*, ...) @nfp_warn(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %102 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = call i32 @eth_hw_addr_random(%struct.TYPE_6__* %104)
  store i32 1, i32* %15, align 4
  br label %142

106:                                              ; preds = %87
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %108 = getelementptr inbounds i32, i32* %27, i64 0
  %109 = getelementptr inbounds i32, i32* %27, i64 1
  %110 = getelementptr inbounds i32, i32* %27, i64 2
  %111 = getelementptr inbounds i32, i32* %27, i64 3
  %112 = getelementptr inbounds i32, i32* %27, i64 4
  %113 = getelementptr inbounds i32, i32* %27, i64 5
  %114 = call i32 @sscanf(i8* %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32* %108, i32* %109, i32* %110, i32* %111, i32* %112, i32* %113)
  %115 = icmp ne i32 %114, 6
  br i1 %115, label %116, label %127

116:                                              ; preds = %106
  %117 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %118 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %121 = call i32 (i32, i8*, ...) @nfp_warn(i32 %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %120)
  %122 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %123 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = call i32 @eth_hw_addr_random(%struct.TYPE_6__* %125)
  store i32 1, i32* %15, align 4
  br label %142

127:                                              ; preds = %106
  %128 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %129 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ether_addr_copy(i32 %133, i32* %27)
  %135 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %136 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ether_addr_copy(i32 %140, i32* %27)
  store i32 0, i32* %15, align 4
  br label %142

142:                                              ; preds = %127, %116, %95, %77, %61, %35
  %143 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %15, align 4
  switch i32 %144, label %146 [
    i32 0, label %145
    i32 1, label %145
  ]

145:                                              ; preds = %142, %142
  ret void

146:                                              ; preds = %142
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nfp_warn(i32, i8*, ...) #2

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_6__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local %struct.nfp_nsp* @nfp_nsp_open(i32) #2

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #2

declare dso_local i8* @PTR_ERR(%struct.nfp_nsp*) #2

declare dso_local i32 @nfp_nsp_has_hwinfo_lookup(%struct.nfp_nsp*) #2

declare dso_local i32 @nfp_nsp_hwinfo_lookup(%struct.nfp_nsp*, i8*, i32) #2

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ether_addr_copy(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
