; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_manage.c_e1000e_enable_tx_pkt_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_manage.c_e1000e_enable_tx_pkt_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_host_mng_dhcp_cookie }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_host_mng_dhcp_cookie = type { i64, i64, i32 }

@E1000_MNG_DHCP_COOKIE_LENGTH = common dso_local global i32 0, align 4
@E1000_MNG_DHCP_COOKIE_OFFSET = common dso_local global i32 0, align 4
@E1000_HOST_IF = common dso_local global i32 0, align 4
@E1000_IAMT_SIGNATURE = common dso_local global i64 0, align 8
@E1000_MNG_DHCP_COOKIE_STATUS_PARSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_enable_tx_pkt_filtering(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_host_mng_dhcp_cookie*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_host_mng_dhcp_cookie* %13, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  %16 = bitcast %struct.e1000_host_mng_dhcp_cookie* %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.0*
  %27 = call i32 %24(%struct.e1000_hw.0* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %1
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %2, align 4
  br label %116

37:                                               ; preds = %1
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = call i64 @e1000_mng_enable_host_if(%struct.e1000_hw* %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %2, align 4
  br label %116

50:                                               ; preds = %37
  %51 = load i32, i32* @E1000_MNG_DHCP_COOKIE_LENGTH, align 4
  %52 = ashr i32 %51, 2
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @E1000_MNG_DHCP_COOKIE_OFFSET, align 4
  %54 = ashr i32 %53, 2
  store i32 %54, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %70, %50
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = load i32, i32* @E1000_HOST_IF, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %60, i32 %61, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %55

73:                                               ; preds = %55
  %74 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %75 = getelementptr inbounds %struct.e1000_host_mng_dhcp_cookie, %struct.e1000_host_mng_dhcp_cookie* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %8, align 8
  %77 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_host_mng_dhcp_cookie, %struct.e1000_host_mng_dhcp_cookie* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %80 = bitcast %struct.e1000_host_mng_dhcp_cookie* %79 to i32*
  %81 = load i32, i32* @E1000_MNG_DHCP_COOKIE_LENGTH, align 4
  %82 = call i64 @e1000_calculate_checksum(i32* %80, i32 %81)
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %73
  %87 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_host_mng_dhcp_cookie, %struct.e1000_host_mng_dhcp_cookie* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @E1000_IAMT_SIGNATURE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %86, %73
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %2, align 4
  br label %116

100:                                              ; preds = %86
  %101 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %102 = getelementptr inbounds %struct.e1000_host_mng_dhcp_cookie, %struct.e1000_host_mng_dhcp_cookie* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_PARSING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %100
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %111, %92, %42, %29
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @e1000_mng_enable_host_if(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_calculate_checksum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
