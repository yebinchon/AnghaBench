; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { i32, %struct.TYPE_6__*, %struct.hns3_enet_tqp_vector* }
%struct.TYPE_6__ = type { i8* }
%struct.hns3_enet_tqp_vector = type { i64, i8*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@HNS3_VECTOR_INITED = common dso_local global i64 0, align 8
@HNAE3_INT_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-%s-%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TxRx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@hns3_irq_handle = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"request irq(%d) fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_nic_priv*)* @hns3_nic_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_nic_init_irq(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns3_nic_priv*, align 8
  %4 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %140, %1
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %13 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %143

16:                                               ; preds = %10
  %17 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %18 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %17, i32 0, i32 2
  %19 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %19, i64 %21
  store %struct.hns3_enet_tqp_vector* %22, %struct.hns3_enet_tqp_vector** %4, align 8
  %23 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %24 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HNS3_VECTOR_INITED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %140

29:                                               ; preds = %16
  %30 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %31 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %37 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %43 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @HNAE3_INT_NAME_LEN, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %48 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = call i32 @snprintf(i8* %44, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %100

57:                                               ; preds = %35, %29
  %58 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %59 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %65 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @HNAE3_INT_NAME_LEN, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %70 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = call i32 @snprintf(i8* %66, i32 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %99

77:                                               ; preds = %57
  %78 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %79 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %85 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @HNAE3_INT_NAME_LEN, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %90 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = call i32 @snprintf(i8* %86, i32 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %98

97:                                               ; preds = %77
  br label %140

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %63
  br label %100

100:                                              ; preds = %99, %41
  %101 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %102 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @HNAE3_INT_NAME_LEN, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %109 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @hns3_irq_handle, align 4
  %112 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %113 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %116 = call i32 @request_irq(i32 %110, i32 %111, i32 0, i8* %114, %struct.hns3_enet_tqp_vector* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %100
  %120 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %121 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %124 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @netdev_err(%struct.TYPE_6__* %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %128 = call i32 @hns3_nic_uninit_irq(%struct.hns3_nic_priv* %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %2, align 4
  br label %144

130:                                              ; preds = %100
  %131 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %132 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %135 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %134, i32 0, i32 2
  %136 = call i32 @irq_set_affinity_hint(i32 %133, i32* %135)
  %137 = load i64, i64* @HNS3_VECTOR_INITED, align 8
  %138 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %139 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %130, %97, %28
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %10

143:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %119
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.hns3_enet_tqp_vector*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @hns3_nic_uninit_irq(%struct.hns3_nic_priv*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
