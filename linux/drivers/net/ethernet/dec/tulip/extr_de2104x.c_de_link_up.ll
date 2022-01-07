; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i64, i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"link up, media %s\0A\00", align 1
@media_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*)* @de_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_link_up(%struct.de_private* %0) #0 {
  %2 = alloca %struct.de_private*, align 8
  store %struct.de_private* %0, %struct.de_private** %2, align 8
  %3 = load %struct.de_private*, %struct.de_private** %2, align 8
  %4 = getelementptr inbounds %struct.de_private, %struct.de_private* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @netif_carrier_ok(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = load %struct.de_private*, %struct.de_private** %2, align 8
  %10 = getelementptr inbounds %struct.de_private, %struct.de_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netif_carrier_on(i32 %11)
  %13 = load %struct.de_private*, %struct.de_private** %2, align 8
  %14 = load i32, i32* @link, align 4
  %15 = load %struct.de_private*, %struct.de_private** %2, align 8
  %16 = getelementptr inbounds %struct.de_private, %struct.de_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** @media_name, align 8
  %19 = load %struct.de_private*, %struct.de_private** %2, align 8
  %20 = getelementptr inbounds %struct.de_private, %struct.de_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_info(%struct.de_private* %13, i32 %14, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_info(%struct.de_private*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
