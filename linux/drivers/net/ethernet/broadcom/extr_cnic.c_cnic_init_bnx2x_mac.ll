; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_init_bnx2x_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_init_bnx2x_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32*, i32 }
%struct.bnx2x = type { i32 }

@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_init_bnx2x_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_init_bnx2x_mac(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.bnx2x* @netdev_priv(i32 %8)
  store %struct.bnx2x* %9, %struct.bnx2x** %3, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %17 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR0_OFFSET(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CNIC_WR8(%struct.cnic_dev* %16, i64 %20, i32 %23)
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %26 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR1_OFFSET(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CNIC_WR8(%struct.cnic_dev* %25, i64 %29, i32 %32)
  %34 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %35 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR2_OFFSET(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CNIC_WR8(%struct.cnic_dev* %34, i64 %38, i32 %41)
  %43 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %44 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR3_OFFSET(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @CNIC_WR8(%struct.cnic_dev* %43, i64 %47, i32 %50)
  %52 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %53 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR4_OFFSET(i32 %54)
  %56 = add nsw i64 %53, %55
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CNIC_WR8(%struct.cnic_dev* %52, i64 %56, i32 %59)
  %61 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %62 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR5_OFFSET(i32 %63)
  %65 = add nsw i64 %62, %64
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CNIC_WR8(%struct.cnic_dev* %61, i64 %65, i32 %68)
  %70 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %71 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @TSTORM_ISCSI_TCP_VARS_LSB_LOCAL_MAC_ADDR_OFFSET(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CNIC_WR8(%struct.cnic_dev* %70, i64 %74, i32 %77)
  %79 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %80 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i64 @TSTORM_ISCSI_TCP_VARS_LSB_LOCAL_MAC_ADDR_OFFSET(i32 %81)
  %83 = add nsw i64 %80, %82
  %84 = add nsw i64 %83, 1
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @CNIC_WR8(%struct.cnic_dev* %79, i64 %84, i32 %87)
  %89 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %90 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @TSTORM_ISCSI_TCP_VARS_MID_LOCAL_MAC_ADDR_OFFSET(i32 %91)
  %93 = add nsw i64 %90, %92
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CNIC_WR8(%struct.cnic_dev* %89, i64 %93, i32 %96)
  %98 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %99 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i64 @TSTORM_ISCSI_TCP_VARS_MID_LOCAL_MAC_ADDR_OFFSET(i32 %100)
  %102 = add nsw i64 %99, %101
  %103 = add nsw i64 %102, 1
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @CNIC_WR8(%struct.cnic_dev* %98, i64 %103, i32 %106)
  %108 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %109 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @TSTORM_ISCSI_TCP_VARS_MSB_LOCAL_MAC_ADDR_OFFSET(i32 %110)
  %112 = add nsw i64 %109, %111
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @CNIC_WR8(%struct.cnic_dev* %108, i64 %112, i32 %115)
  %117 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %118 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i64 @TSTORM_ISCSI_TCP_VARS_MSB_LOCAL_MAC_ADDR_OFFSET(i32 %119)
  %121 = add nsw i64 %118, %120
  %122 = add nsw i64 %121, 1
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @CNIC_WR8(%struct.cnic_dev* %117, i64 %122, i32 %125)
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @CNIC_WR8(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR0_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR1_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR2_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR3_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR4_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR5_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_VARS_LSB_LOCAL_MAC_ADDR_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_VARS_MID_LOCAL_MAC_ADDR_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_VARS_MSB_LOCAL_MAC_ADDR_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
