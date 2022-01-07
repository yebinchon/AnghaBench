; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_link = type { i32 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.media_link* (%struct.list_head*)* @media_add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.media_link* @media_add_link(%struct.list_head* %0) #0 {
  %2 = alloca %struct.media_link*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.media_link*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.media_link* @kzalloc(i32 4, i32 %5)
  store %struct.media_link* %6, %struct.media_link** %4, align 8
  %7 = load %struct.media_link*, %struct.media_link** %4, align 8
  %8 = icmp eq %struct.media_link* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.media_link* null, %struct.media_link** %2, align 8
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.media_link*, %struct.media_link** %4, align 8
  %12 = getelementptr inbounds %struct.media_link, %struct.media_link* %11, i32 0, i32 0
  %13 = load %struct.list_head*, %struct.list_head** %3, align 8
  %14 = call i32 @list_add_tail(i32* %12, %struct.list_head* %13)
  %15 = load %struct.media_link*, %struct.media_link** %4, align 8
  store %struct.media_link* %15, %struct.media_link** %2, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = load %struct.media_link*, %struct.media_link** %2, align 8
  ret %struct.media_link* %17
}

declare dso_local %struct.media_link* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
