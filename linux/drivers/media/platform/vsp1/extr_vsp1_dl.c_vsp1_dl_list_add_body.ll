; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_list_add_body.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_list_add_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsp1_dl_list_add_body(%struct.vsp1_dl_list* %0, %struct.vsp1_dl_body* %1) #0 {
  %3 = alloca %struct.vsp1_dl_list*, align 8
  %4 = alloca %struct.vsp1_dl_body*, align 8
  store %struct.vsp1_dl_list* %0, %struct.vsp1_dl_list** %3, align 8
  store %struct.vsp1_dl_body* %1, %struct.vsp1_dl_body** %4, align 8
  %5 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %6 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %5, i32 0, i32 1
  %7 = call i32 @refcount_inc(i32* %6)
  %8 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %9 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %8, i32 0, i32 0
  %10 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %3, align 8
  %11 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %10, i32 0, i32 0
  %12 = call i32 @list_add_tail(i32* %9, i32* %11)
  ret i32 0
}

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
