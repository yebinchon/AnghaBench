; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_reg_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_reg_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.ehea_port = type { i32, %struct.TYPE_8__*, %struct.ehea_port*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ehea_port_res = type { i32, %struct.TYPE_8__*, %struct.ehea_port_res*, %struct.TYPE_6__*, i32, i32 }

@EHEA_IRQ_NAME_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s-aff\00", align 1
@ehea_qp_aff_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"failed registering irq for qp_aff_irq_handler:ist=%X\0A\00", align 1
@ifup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"irq_handle 0x%X for function qp_aff_irq_handler registered\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s-queue%d\00", align 1
@ehea_recv_irq_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"failed registering irq for ehea_queue port_res_nr:%d, ist=%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"irq_handle 0x%X for function ehea_queue_int %d registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_reg_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_reg_interrupts(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.ehea_port_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.ehea_port_res* @netdev_priv(%struct.net_device* %8)
  %10 = bitcast %struct.ehea_port_res* %9 to %struct.ehea_port*
  store %struct.ehea_port* %10, %struct.ehea_port** %3, align 8
  %11 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %12 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @EHEA_IRQ_NAME_SIZE, align 8
  %15 = sub nsw i64 %14, 1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i64, i8*, i8*, ...) @snprintf(i32 %13, i64 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %21 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ehea_qp_aff_irq_handler, align 4
  %27 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %28 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %31 = bitcast %struct.ehea_port* %30 to %struct.ehea_port_res*
  %32 = call i32 @ibmebus_request_irq(i32 %25, i32 %26, i32 0, i32 %29, %struct.ehea_port_res* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %38 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %150

44:                                               ; preds = %1
  %45 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %46 = bitcast %struct.ehea_port* %45 to %struct.ehea_port_res*
  %47 = load i32, i32* @ifup, align 4
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %50 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.ehea_port_res*, i32, %struct.net_device*, i8*, i32, ...) @netif_info(%struct.ehea_port_res* %46, i32 %47, %struct.net_device* %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %117, %44
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %59 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %120

62:                                               ; preds = %56
  %63 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %64 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %63, i32 0, i32 2
  %65 = load %struct.ehea_port*, %struct.ehea_port** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %65, i64 %67
  %69 = bitcast %struct.ehea_port* %68 to %struct.ehea_port_res*
  store %struct.ehea_port_res* %69, %struct.ehea_port_res** %4, align 8
  %70 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %71 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @EHEA_IRQ_NAME_SIZE, align 8
  %74 = sub nsw i64 %73, 1
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32, i64, i8*, i8*, ...) @snprintf(i32 %72, i64 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 %78)
  %80 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %81 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ehea_recv_irq_handler, align 4
  %87 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %88 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %91 = call i32 @ibmebus_request_irq(i32 %85, i32 %86, i32 0, i32 %89, %struct.ehea_port_res* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %62
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %98 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %95, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32 %102)
  br label %123

104:                                              ; preds = %62
  %105 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %106 = bitcast %struct.ehea_port* %105 to %struct.ehea_port_res*
  %107 = load i32, i32* @ifup, align 4
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %110 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %109, i32 0, i32 3
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 (%struct.ehea_port_res*, i32, %struct.net_device*, i8*, i32, ...) @netif_info(%struct.ehea_port_res* %106, i32 %107, %struct.net_device* %108, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %104
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %56

120:                                              ; preds = %56
  br label %121

121:                                              ; preds = %150, %120
  %122 = load i32, i32* %6, align 4
  ret i32 %122

123:                                              ; preds = %94
  br label %124

124:                                              ; preds = %128, %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %5, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %149

128:                                              ; preds = %124
  %129 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %130 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %129, i32 0, i32 2
  %131 = load %struct.ehea_port*, %struct.ehea_port** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %131, i64 %133
  %135 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %134, i32 0, i32 3
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %142 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %141, i32 0, i32 2
  %143 = load %struct.ehea_port*, %struct.ehea_port** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %143, i64 %145
  %147 = bitcast %struct.ehea_port* %146 to %struct.ehea_port_res*
  %148 = call i32 @ibmebus_free_irq(i32 %140, %struct.ehea_port_res* %147)
  br label %124

149:                                              ; preds = %124
  br label %150

150:                                              ; preds = %149, %35
  %151 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %152 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %151, i32 0, i32 1
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %158 = bitcast %struct.ehea_port* %157 to %struct.ehea_port_res*
  %159 = call i32 @ibmebus_free_irq(i32 %156, %struct.ehea_port_res* %158)
  %160 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %161 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %5, align 4
  br label %121
}

declare dso_local %struct.ehea_port_res* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*, ...) #1

declare dso_local i32 @ibmebus_request_irq(i32, i32, i32, i32, %struct.ehea_port_res*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @netif_info(%struct.ehea_port_res*, i32, %struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @ibmebus_free_irq(i32, %struct.ehea_port_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
