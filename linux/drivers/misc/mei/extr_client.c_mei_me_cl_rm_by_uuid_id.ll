; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_me_cl_rm_by_uuid_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_me_cl_rm_by_uuid_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32 }
%struct.mei_me_client = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"remove %pUl %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_me_cl_rm_by_uuid_id(%struct.mei_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mei_me_client*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %9 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %12)
  %14 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %15 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %14, i32 0, i32 0
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.mei_me_client* @__mei_me_cl_by_uuid_id(%struct.mei_device* %17, i32* %18, i32 %19)
  store %struct.mei_me_client* %20, %struct.mei_me_client** %7, align 8
  %21 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %22 = load %struct.mei_me_client*, %struct.mei_me_client** %7, align 8
  %23 = call i32 @__mei_me_cl_del(%struct.mei_device* %21, %struct.mei_me_client* %22)
  %24 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %25 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %24, i32 0, i32 0
  %26 = call i32 @up_write(i32* %25)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.mei_me_client* @__mei_me_cl_by_uuid_id(%struct.mei_device*, i32*, i32) #1

declare dso_local i32 @__mei_me_cl_del(%struct.mei_device*, %struct.mei_me_client*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
