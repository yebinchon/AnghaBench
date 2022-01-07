; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_read_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_read_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@NFP_NET_CFG_CAP = common dso_local global i32 0, align 4
@NFP_NET_CFG_MAX_MTU = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RSS = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_CHAIN_META = common dso_local global i32 0, align 4
@NFP_NET_CFG_RX_OFFSET = common dso_local global i32 0, align 4
@NFP_NET_MAX_PREPEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid rx offset: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_NET_RX_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*)* @nfp_net_read_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_read_caps(%struct.nfp_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i64, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  %5 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %6 = load i32, i32* @NFP_NET_CFG_CAP, align 4
  %7 = call i8* @nn_readl(%struct.nfp_net* %5, i32 %6)
  %8 = ptrtoint i8* %7 to i32
  %9 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %12 = load i32, i32* @NFP_NET_CFG_MAX_MTU, align 4
  %13 = call i8* @nn_readl(%struct.nfp_net* %11, i32 %12)
  %14 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %41, label %21

21:                                               ; preds = %1
  %22 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %23 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %29 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NFP_NET_CFG_CTRL_RSS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %36 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NFP_NET_CFG_CTRL_CHAIN_META, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %34, %27, %21, %1
  %42 = phi i1 [ true, %27 ], [ true, %21 ], [ true, %1 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %45 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %48 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %41
  %53 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %54 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 4
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* @NFP_NET_CFG_CTRL_RSS, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %62 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %58, %52, %41
  %66 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %67 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 2
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %73 = load i32, i32* @NFP_NET_CFG_RX_OFFSET, align 4
  %74 = call i8* @nn_readl(%struct.nfp_net* %72, i32 %73)
  %75 = ptrtoint i8* %74 to i64
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @NFP_NET_MAX_PREPEND, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @nn_err(%struct.nfp_net* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %114

85:                                               ; preds = %71
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %88 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i64 %86, i64* %89, align 8
  br label %95

90:                                               ; preds = %65
  %91 = load i64, i64* @NFP_NET_RX_OFFSET, align 8
  %92 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %93 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %97 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %95
  %102 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %103 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %110 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %101, %95
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %79
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @nn_readl(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_err(%struct.nfp_net*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
