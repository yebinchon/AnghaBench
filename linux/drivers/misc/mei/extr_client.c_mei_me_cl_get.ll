; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_me_cl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_me_cl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_me_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mei_me_client* @mei_me_cl_get(%struct.mei_me_client* %0) #0 {
  %2 = alloca %struct.mei_me_client*, align 8
  %3 = alloca %struct.mei_me_client*, align 8
  store %struct.mei_me_client* %0, %struct.mei_me_client** %3, align 8
  %4 = load %struct.mei_me_client*, %struct.mei_me_client** %3, align 8
  %5 = icmp ne %struct.mei_me_client* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.mei_me_client*, %struct.mei_me_client** %3, align 8
  %8 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %7, i32 0, i32 0
  %9 = call i64 @kref_get_unless_zero(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load %struct.mei_me_client*, %struct.mei_me_client** %3, align 8
  store %struct.mei_me_client* %12, %struct.mei_me_client** %2, align 8
  br label %14

13:                                               ; preds = %6, %1
  store %struct.mei_me_client* null, %struct.mei_me_client** %2, align 8
  br label %14

14:                                               ; preds = %13, %11
  %15 = load %struct.mei_me_client*, %struct.mei_me_client** %2, align 8
  ret %struct.mei_me_client* %15
}

declare dso_local i64 @kref_get_unless_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
