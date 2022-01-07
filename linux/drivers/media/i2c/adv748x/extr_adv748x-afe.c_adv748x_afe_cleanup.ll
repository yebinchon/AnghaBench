; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_afe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adv748x_afe_cleanup(%struct.adv748x_afe* %0) #0 {
  %2 = alloca %struct.adv748x_afe*, align 8
  store %struct.adv748x_afe* %0, %struct.adv748x_afe** %2, align 8
  %3 = load %struct.adv748x_afe*, %struct.adv748x_afe** %2, align 8
  %4 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %3, i32 0, i32 1
  %5 = call i32 @v4l2_device_unregister_subdev(%struct.TYPE_2__* %4)
  %6 = load %struct.adv748x_afe*, %struct.adv748x_afe** %2, align 8
  %7 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @media_entity_cleanup(i32* %8)
  %10 = load %struct.adv748x_afe*, %struct.adv748x_afe** %2, align 8
  %11 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %10, i32 0, i32 0
  %12 = call i32 @v4l2_ctrl_handler_free(i32* %11)
  ret void
}

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.TYPE_2__*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
