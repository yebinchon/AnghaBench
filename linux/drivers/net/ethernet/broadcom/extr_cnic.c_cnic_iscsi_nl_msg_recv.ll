; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_iscsi_nl_msg_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_iscsi_nl_msg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_sock*, i32* }
%struct.cnic_sock = type { i32, i32*, i32*, i32 }
%struct.iscsi_path = type { %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_CM_SK_TBL_SZ = common dso_local global i32 0, align 4
@CNIC_ULP_L4 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@SK_F_CONNECT_START = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SK_F_IPV6 = common dso_local global i32 0, align 4
@SK_F_OFFLD_SCHED = common dso_local global i32 0, align 4
@SK_F_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i32, i8*, i32)* @cnic_iscsi_nl_msg_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_iscsi_nl_msg_recv(%struct.cnic_dev* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cnic_local*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cnic_sock*, align 8
  %13 = alloca %struct.iscsi_path*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %137 [
    i32 128, label %17
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 24
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %137

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.iscsi_path*
  store %struct.iscsi_path* %24, %struct.iscsi_path** %13, align 8
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %26 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %25, i32 0, i32 0
  %27 = load %struct.cnic_local*, %struct.cnic_local** %26, align 8
  store %struct.cnic_local* %27, %struct.cnic_local** %10, align 8
  %28 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %29 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MAX_CM_SK_TBL_SZ, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %137

35:                                               ; preds = %22
  %36 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %37 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @CNIC_ULP_L4, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rcu_access_pointer(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %137

47:                                               ; preds = %35
  %48 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %49 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %48, i32 0, i32 0
  %50 = load %struct.cnic_sock*, %struct.cnic_sock** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %50, i64 %52
  store %struct.cnic_sock* %53, %struct.cnic_sock** %12, align 8
  %54 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %55 = call i32 @csk_hold(%struct.cnic_sock* %54)
  %56 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %57 = call i32 @cnic_in_use(%struct.cnic_sock* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %134

59:                                               ; preds = %47
  %60 = load i32, i32* @SK_F_CONNECT_START, align 4
  %61 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %62 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %61, i32 0, i32 0
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %134

65:                                               ; preds = %59
  %66 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %67 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %70 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %72 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %75 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = call i32 @memcpy(i32* %73, i32* %76, i32 %77)
  %79 = load i32, i32* @SK_F_IPV6, align 4
  %80 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %81 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %80, i32 0, i32 0
  %82 = call i32 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %65
  %85 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %86 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %90 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = call i32 @memcpy(i32* %88, i32* %91, i32 4)
  br label %102

93:                                               ; preds = %65
  %94 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %95 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %99 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @memcpy(i32* %97, i32* %100, i32 4)
  br label %102

102:                                              ; preds = %93, %84
  %103 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %104 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @is_valid_ether_addr(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %110 = call i32 @cnic_cm_set_pg(%struct.cnic_sock* %109)
  br label %133

111:                                              ; preds = %102
  %112 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %113 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %114 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %113, i32 0, i32 0
  %115 = call i32 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* @SK_F_OFFLD_COMPLETE, align 4
  %119 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %120 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %119, i32 0, i32 0
  %121 = call i32 @test_bit(i32 %118, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %117
  %124 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %125 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %126 = load i32, i32* @L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE, align 4
  %127 = call i32 @cnic_cm_upcall(%struct.cnic_local* %124, %struct.cnic_sock* %125, i32 %126)
  %128 = load i32, i32* @SK_F_CONNECT_START, align 4
  %129 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %130 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %129, i32 0, i32 0
  %131 = call i32 @clear_bit(i32 %128, i32* %130)
  br label %132

132:                                              ; preds = %123, %117, %111
  br label %133

133:                                              ; preds = %132, %108
  br label %134

134:                                              ; preds = %133, %59, %47
  %135 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %136 = call i32 @csk_put(%struct.cnic_sock* %135)
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %4, %44, %34, %21
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @csk_hold(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_in_use(%struct.cnic_sock*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @cnic_cm_set_pg(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_cm_upcall(%struct.cnic_local*, %struct.cnic_sock*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @csk_put(%struct.cnic_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
