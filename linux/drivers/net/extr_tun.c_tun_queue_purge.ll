; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_queue_purge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_queue_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_file = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_file*)* @tun_queue_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_queue_purge(%struct.tun_file* %0) #0 {
  %2 = alloca %struct.tun_file*, align 8
  %3 = alloca i8*, align 8
  store %struct.tun_file* %0, %struct.tun_file** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.tun_file*, %struct.tun_file** %2, align 8
  %6 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %5, i32 0, i32 1
  %7 = call i8* @ptr_ring_consume(i32* %6)
  store i8* %7, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @tun_ptr_free(i8* %10)
  br label %4

12:                                               ; preds = %4
  %13 = load %struct.tun_file*, %struct.tun_file** %2, align 8
  %14 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @skb_queue_purge(i32* %15)
  %17 = load %struct.tun_file*, %struct.tun_file** %2, align 8
  %18 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @skb_queue_purge(i32* %19)
  ret void
}

declare dso_local i8* @ptr_ring_consume(i32*) #1

declare dso_local i32 @tun_ptr_free(i8*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
