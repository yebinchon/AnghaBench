; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_xdp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_xdp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i64, i64, i64, %struct.net_device*, i32* }
%struct.net_device = type { i64 }
%struct.bpf_prog = type { i32 }

@MAX_XDP_MTU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Jumbo frames not yet supported with XDP, current MTU %d.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to attach BPF prog, RXQs + TXQs > Max %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.bpf_prog*)* @nicvf_xdp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_xdp_setup(%struct.nicvf* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %11 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %12 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = call i32 @netif_running(%struct.net_device* %16)
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %19 = icmp ne %struct.bpf_prog* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAX_XDP_MTU, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @netdev_warn(%struct.net_device* %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %119

34:                                               ; preds = %20, %2
  %35 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %36 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %39 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %43 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %49 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @netdev_warn(%struct.net_device* %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %119

54:                                               ; preds = %34
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %59 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %58, i32 0, i32 3
  %60 = load %struct.net_device*, %struct.net_device** %59, align 8
  %61 = call i32 @nicvf_stop(%struct.net_device* %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %64 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %63, i32 0, i32 4
  %65 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %66 = call %struct.bpf_prog* @xchg(i32** %64, %struct.bpf_prog* %65)
  store %struct.bpf_prog* %66, %struct.bpf_prog** %8, align 8
  %67 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %68 = icmp ne %struct.bpf_prog* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %71 = call i32 @bpf_prog_put(%struct.bpf_prog* %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %74 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %79 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %82 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 1
  %85 = call i32* @bpf_prog_add(i32* %80, i64 %84)
  %86 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %87 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %86, i32 0, i32 4
  store i32* %85, i32** %87, align 8
  %88 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %89 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @IS_ERR(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %77
  store i32 1, i32* %9, align 4
  br label %101

94:                                               ; preds = %77
  %95 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %96 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @PTR_ERR(i32* %97)
  store i32 %98, i32* %10, align 4
  %99 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %100 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %94, %93
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @nicvf_set_xdp_queues(%struct.nicvf* %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %110 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %109, i32 0, i32 3
  %111 = load %struct.net_device*, %struct.net_device** %110, align 8
  %112 = call i32 @nicvf_open(%struct.net_device* %111)
  %113 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %114 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %113, i32 0, i32 3
  %115 = load %struct.net_device*, %struct.net_device** %114, align 8
  %116 = call i32 @netif_trans_update(%struct.net_device* %115)
  br label %117

117:                                              ; preds = %108, %102
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %46, %26
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @nicvf_stop(%struct.net_device*) #1

declare dso_local %struct.bpf_prog* @xchg(i32**, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32* @bpf_prog_add(i32*, i64) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nicvf_set_xdp_queues(%struct.nicvf*, i32) #1

declare dso_local i32 @nicvf_open(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
