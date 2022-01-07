; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_me_cl_by_uuid_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_me_cl_by_uuid_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_me_client = type { i32 }
%struct.mei_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mei_me_client* @mei_me_cl_by_uuid_id(%struct.mei_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mei_me_client*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %9 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %8, i32 0, i32 0
  %10 = call i32 @down_read(i32* %9)
  %11 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.mei_me_client* @__mei_me_cl_by_uuid_id(%struct.mei_device* %11, i32* %12, i32 %13)
  store %struct.mei_me_client* %14, %struct.mei_me_client** %7, align 8
  %15 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %16 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %15, i32 0, i32 0
  %17 = call i32 @up_read(i32* %16)
  %18 = load %struct.mei_me_client*, %struct.mei_me_client** %7, align 8
  ret %struct.mei_me_client* %18
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.mei_me_client* @__mei_me_cl_by_uuid_id(%struct.mei_device*, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
