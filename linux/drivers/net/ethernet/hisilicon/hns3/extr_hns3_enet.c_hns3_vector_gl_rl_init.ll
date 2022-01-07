; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_vector_gl_rl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_vector_gl_rl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_tqp_vector = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.hns3_nic_priv = type { i32 }

@HNS3_INT_GL_50K = common dso_local global i8* null, align 8
@HNS3_FLOW_LOW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_tqp_vector*, %struct.hns3_nic_priv*)* @hns3_vector_gl_rl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_vector_gl_rl_init(%struct.hns3_enet_tqp_vector* %0, %struct.hns3_nic_priv* %1) #0 {
  %3 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %4 = alloca %struct.hns3_nic_priv*, align 8
  store %struct.hns3_enet_tqp_vector* %0, %struct.hns3_enet_tqp_vector** %3, align 8
  store %struct.hns3_nic_priv* %1, %struct.hns3_nic_priv** %4, align 8
  %5 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %6 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %10 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i8*, i8** @HNS3_INT_GL_50K, align 8
  %14 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %15 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store i8* %13, i8** %17, align 8
  %18 = load i8*, i8** @HNS3_INT_GL_50K, align 8
  %19 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %20 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i8* %18, i8** %22, align 8
  %23 = load i8*, i8** @HNS3_FLOW_LOW, align 8
  %24 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %25 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** @HNS3_FLOW_LOW, align 8
  %29 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %30 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i8* %28, i8** %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
