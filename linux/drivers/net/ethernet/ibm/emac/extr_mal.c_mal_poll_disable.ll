; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_mal.c_mal_poll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_mal.c_mal_poll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mal_instance = type { i32 }
%struct.mal_commac = type { i32 }

@MAL_COMMAC_POLL_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mal_poll_disable(%struct.mal_instance* %0, %struct.mal_commac* %1) #0 {
  %3 = alloca %struct.mal_instance*, align 8
  %4 = alloca %struct.mal_commac*, align 8
  store %struct.mal_instance* %0, %struct.mal_instance** %3, align 8
  store %struct.mal_commac* %1, %struct.mal_commac** %4, align 8
  br label %5

5:                                                ; preds = %11, %2
  %6 = load i32, i32* @MAL_COMMAC_POLL_DISABLED, align 4
  %7 = load %struct.mal_commac*, %struct.mal_commac** %4, align 8
  %8 = getelementptr inbounds %struct.mal_commac, %struct.mal_commac* %7, i32 0, i32 0
  %9 = call i64 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = call i32 @msleep(i32 1)
  br label %5

13:                                               ; preds = %5
  %14 = load %struct.mal_instance*, %struct.mal_instance** %3, align 8
  %15 = getelementptr inbounds %struct.mal_instance, %struct.mal_instance* %14, i32 0, i32 0
  %16 = call i32 @napi_synchronize(i32* %15)
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @napi_synchronize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
