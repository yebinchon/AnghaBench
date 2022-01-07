; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_mac_del_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_mac_del_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_4__*, i32, %struct.mvpp2* }
%struct.TYPE_4__ = type { i32 }
%struct.mvpp2 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_MAC_RANGE_START = common dso_local global i32 0, align 4
@MVPP2_PE_MAC_RANGE_END = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_MAC = common dso_local global i64 0, align 8
@MVPP2_PRS_UDF_MAC_DEF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvpp2_prs_mac_del_all(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca %struct.mvpp2_prs_entry, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %12 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %13 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %12, i32 0, i32 2
  %14 = load %struct.mvpp2*, %struct.mvpp2** %13, align 8
  store %struct.mvpp2* %14, %struct.mvpp2** %3, align 8
  %15 = load i32, i32* @MVPP2_PE_MAC_RANGE_START, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %107, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MVPP2_PE_MAC_RANGE_END, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %110

20:                                               ; preds = %16
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %28 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %29 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %20
  %38 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %39 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MVPP2_PRS_LU_MAC, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %37
  %49 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %50 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MVPP2_PRS_UDF_MAC_DEF, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48, %37, %20
  store i32 4, i32* %11, align 4
  br label %103

60:                                               ; preds = %48
  %61 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %61, %struct.mvpp2_prs_entry* %4, i32 %62)
  %64 = call i64 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry* %4)
  store i64 %64, i64* %5, align 8
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %66 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @test_bit(i32 %67, i64* %5)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  store i32 4, i32* %11, align 4
  br label %103

71:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %85, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %24, i64 %79
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %27, i64 %82
  %84 = call i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry* %4, i32 %77, i8* %80, i8* %83)
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %72

88:                                               ; preds = %72
  %89 = call i64 @is_broadcast_ether_addr(i8* %24)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %93 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @ether_addr_equal(i8* %24, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %88
  store i32 4, i32* %11, align 4
  br label %103

100:                                              ; preds = %91
  %101 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %102 = call i32 @mvpp2_prs_mac_da_accept(%struct.mvpp2_port* %101, i8* %24, i32 0)
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %100, %99, %70, %59
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %11, align 4
  switch i32 %105, label %111 [
    i32 0, label %106
    i32 4, label %107
  ]

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106, %103
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %16

110:                                              ; preds = %16
  ret void

111:                                              ; preds = %103
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #2

declare dso_local i64 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry*) #2

declare dso_local i32 @test_bit(i32, i64*) #2

declare dso_local i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry*, i32, i8*, i8*) #2

declare dso_local i64 @is_broadcast_ether_addr(i8*) #2

declare dso_local i64 @ether_addr_equal(i8*, i32) #2

declare dso_local i32 @mvpp2_prs_mac_da_accept(%struct.mvpp2_port*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
