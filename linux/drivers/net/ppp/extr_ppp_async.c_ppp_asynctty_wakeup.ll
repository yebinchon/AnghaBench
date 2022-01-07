; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_async.c_ppp_asynctty_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_async.c_ppp_asynctty_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.asyncppp = type { i32, i32 }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@XMIT_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @ppp_asynctty_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_asynctty_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.asyncppp*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = call %struct.asyncppp* @ap_get(%struct.tty_struct* %4)
  store %struct.asyncppp* %5, %struct.asyncppp** %3, align 8
  %6 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = call i32 @clear_bit(i32 %6, i32* %8)
  %10 = load %struct.asyncppp*, %struct.asyncppp** %3, align 8
  %11 = icmp ne %struct.asyncppp* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @XMIT_WAKEUP, align 4
  %15 = load %struct.asyncppp*, %struct.asyncppp** %3, align 8
  %16 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %15, i32 0, i32 1
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.asyncppp*, %struct.asyncppp** %3, align 8
  %19 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %18, i32 0, i32 0
  %20 = call i32 @tasklet_schedule(i32* %19)
  %21 = load %struct.asyncppp*, %struct.asyncppp** %3, align 8
  %22 = call i32 @ap_put(%struct.asyncppp* %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.asyncppp* @ap_get(%struct.tty_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ap_put(%struct.asyncppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
