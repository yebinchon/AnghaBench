; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_send_nlmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_send_nlmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_local = type { i32*, i32*, %struct.cnic_uio_dev* }
%struct.cnic_uio_dev = type { i32 }
%struct.cnic_sock = type { i32, i32, i32*, i32, i64 }
%struct.iscsi_path = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cnic_ulp_ops = type { i32 (i32, i64, i8*, i32)* }

@ISCSI_KEVENT_IF_DOWN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ISCSI_KEVENT_PATH_REQ = common dso_local global i64 0, align 8
@SK_F_IPV6 = common dso_local global i32 0, align 4
@CNIC_ULP_ISCSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_local*, i64, %struct.cnic_sock*)* @cnic_send_nlmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_send_nlmsg(%struct.cnic_local* %0, i64 %1, %struct.cnic_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cnic_sock*, align 8
  %8 = alloca %struct.iscsi_path, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.cnic_ulp_ops*, align 8
  %13 = alloca %struct.cnic_uio_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cnic_local* %0, %struct.cnic_local** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cnic_sock* %2, %struct.cnic_sock** %7, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i64, i64* @ISCSI_KEVENT_IF_DOWN, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %18 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %17, i32 0, i32 2
  %19 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %18, align 8
  store %struct.cnic_uio_dev* %19, %struct.cnic_uio_dev** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %13, align 8
  %21 = icmp ne %struct.cnic_uio_dev* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %13, align 8
  %24 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %3
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %118

30:                                               ; preds = %22
  %31 = load %struct.cnic_sock*, %struct.cnic_sock** %7, align 8
  %32 = icmp ne %struct.cnic_sock* %31, null
  br i1 %32, label %33, label %74

33:                                               ; preds = %30
  store i32 32, i32* %10, align 4
  %34 = bitcast %struct.iscsi_path* %8 to i8*
  store i8* %34, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @memset(%struct.iscsi_path* %8, i32 0, i32 %35)
  %37 = load i64, i64* @ISCSI_KEVENT_PATH_REQ, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.cnic_sock*, %struct.cnic_sock** %7, align 8
  %39 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %8, i32 0, i32 4
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @SK_F_IPV6, align 4
  %43 = load %struct.cnic_sock*, %struct.cnic_sock** %7, align 8
  %44 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %43, i32 0, i32 3
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %8, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.cnic_sock*, %struct.cnic_sock** %7, align 8
  %51 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @memcpy(i32* %49, i32* %53, i32 4)
  %55 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %8, i32 0, i32 0
  store i32 16, i32* %55, align 8
  br label %65

56:                                               ; preds = %33
  %57 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %8, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.cnic_sock*, %struct.cnic_sock** %7, align 8
  %60 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = call i32 @memcpy(i32* %58, i32* %62, i32 4)
  %64 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %8, i32 0, i32 0
  store i32 4, i32* %64, align 8
  br label %65

65:                                               ; preds = %56, %47
  %66 = load %struct.cnic_sock*, %struct.cnic_sock** %7, align 8
  %67 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %8, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.cnic_sock*, %struct.cnic_sock** %7, align 8
  %71 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %8, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %30
  br label %75

75:                                               ; preds = %112, %74
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %78, label %116

78:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  %79 = call i32 (...) @rcu_read_lock()
  %80 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %81 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @CNIC_ULP_ISCSI, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.cnic_ulp_ops* @rcu_dereference(i32 %85)
  store %struct.cnic_ulp_ops* %86, %struct.cnic_ulp_ops** %12, align 8
  %87 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %12, align 8
  %88 = icmp ne %struct.cnic_ulp_ops* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %78
  %90 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %12, align 8
  %91 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %90, i32 0, i32 0
  %92 = load i32 (i32, i64, i8*, i32)*, i32 (i32, i64, i8*, i32)** %91, align 8
  %93 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %94 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @CNIC_ULP_ISCSI, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %11, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 %92(i32 %98, i64 %99, i8* %100, i32 %101)
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %89, %78
  %104 = call i32 (...) @rcu_read_unlock()
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @ISCSI_KEVENT_PATH_REQ, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %103
  br label %116

112:                                              ; preds = %107
  %113 = call i32 @msleep(i32 100)
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %75

116:                                              ; preds = %111, %75
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %27
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @memset(%struct.iscsi_path*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cnic_ulp_ops* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
