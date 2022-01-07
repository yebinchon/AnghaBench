; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_graph_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_graph_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_isi = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.device_node* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_isi*, %struct.device_node*)* @isi_graph_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isi_graph_parse(%struct.atmel_isi* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_isi*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.atmel_isi* %0, %struct.atmel_isi** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  %8 = load %struct.device_node*, %struct.device_node** %5, align 8
  %9 = load %struct.device_node*, %struct.device_node** %6, align 8
  %10 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %8, %struct.device_node* %9)
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %17)
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %16
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %29 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store %struct.device_node* %27, %struct.device_node** %30, align 8
  %31 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %32 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.device_node*, %struct.device_node** %7, align 8
  %37 = call i32 @of_fwnode_handle(%struct.device_node* %36)
  %38 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %39 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %26, %23, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, %struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
