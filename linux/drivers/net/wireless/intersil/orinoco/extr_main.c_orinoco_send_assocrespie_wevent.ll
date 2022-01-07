; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_send_assocrespie_wevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_send_assocrespie_wevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32, %struct.hermes, %struct.net_device* }
%struct.hermes = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hermes*, i32, i32, i32, i32*, i32**)* }
%struct.net_device = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_CURRENT_ASSOC_RESP_INFO = common dso_local global i32 0, align 4
@IWEVASSOCRESPIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.orinoco_private*)* @orinoco_send_assocrespie_wevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orinoco_send_assocrespie_wevent(%struct.orinoco_private* %0) #0 {
  %2 = alloca %struct.orinoco_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hermes*, align 8
  %5 = alloca %union.iwreq_data, align 4
  %6 = alloca i32, align 4
  %7 = alloca [88 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %2, align 8
  %10 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %11 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  %13 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %14 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %13, i32 0, i32 1
  store %struct.hermes* %14, %struct.hermes** %4, align 8
  %15 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %16 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %74

20:                                               ; preds = %1
  %21 = load %struct.hermes*, %struct.hermes** %4, align 8
  %22 = getelementptr inbounds %struct.hermes, %struct.hermes* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.hermes*, i32, i32, i32, i32*, i32**)*, i32 (%struct.hermes*, i32, i32, i32, i32*, i32**)** %24, align 8
  %26 = load %struct.hermes*, %struct.hermes** %4, align 8
  %27 = load i32, i32* @USER_BAP, align 4
  %28 = load i32, i32* @HERMES_RID_CURRENT_ASSOC_RESP_INFO, align 4
  %29 = bitcast [88 x i32]* %7 to i32**
  %30 = call i32 %25(%struct.hermes* %26, i32 %27, i32 %28, i32 352, i32* null, i32** %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %74

34:                                               ; preds = %20
  %35 = getelementptr inbounds [88 x i32], [88 x i32]* %7, i64 0, i64 0
  %36 = call i32* @orinoco_get_wpa_ie(i32* %35, i32 352)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds [88 x i32], [88 x i32]* %7, i64 0, i64 0
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = sub i64 352, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 2
  %52 = bitcast %union.iwreq_data* %5 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = bitcast %union.iwreq_data* %5 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load i32, i32* %9, align 4
  %61 = bitcast %union.iwreq_data* %5 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %39
  %64 = bitcast %union.iwreq_data* %5 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = load i32, i32* @IWEVASSOCRESPIE, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @wireless_send_event(%struct.net_device* %69, i32 %70, %union.iwreq_data* %5, i32* %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %19, %33, %73, %34
  ret void
}

declare dso_local i32* @orinoco_get_wpa_ie(i32*, i32) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
