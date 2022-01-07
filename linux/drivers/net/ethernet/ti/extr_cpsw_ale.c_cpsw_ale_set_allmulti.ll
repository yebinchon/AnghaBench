; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_set_allmulti.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_set_allmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_ale = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ALE_ENTRY_WORDS = common dso_local global i32 0, align 4
@ALE_TYPE_VLAN = common dso_local global i32 0, align 4
@ALE_PORT_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_ale_set_allmulti(%struct.cpsw_ale* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpsw_ale*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cpsw_ale* %0, %struct.cpsw_ale** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @ALE_ENTRY_WORDS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %72, %3
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %20 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %17
  %25 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @cpsw_ale_read(%struct.cpsw_ale* %25, i32 %26, i32* %16)
  %28 = call i32 @cpsw_ale_get_entry_type(i32* %16)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @ALE_TYPE_VLAN, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %72

33:                                               ; preds = %24
  %34 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %35 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpsw_ale_get_vlan_member_list(i32* %16, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %72

47:                                               ; preds = %40, %33
  %48 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %49 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cpsw_ale_get_vlan_unreg_mcast(i32* %16, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @ALE_PORT_HOST, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load i32, i32* @ALE_PORT_HOST, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %66 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cpsw_ale_set_vlan_unreg_mcast(i32* %16, i32 %64, i32 %67)
  %69 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @cpsw_ale_write(%struct.cpsw_ale* %69, i32 %70, i32* %16)
  br label %72

72:                                               ; preds = %63, %46, %32
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %17

75:                                               ; preds = %17
  %76 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %76)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpsw_ale_read(%struct.cpsw_ale*, i32, i32*) #2

declare dso_local i32 @cpsw_ale_get_entry_type(i32*) #2

declare dso_local i32 @cpsw_ale_get_vlan_member_list(i32*, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @cpsw_ale_get_vlan_unreg_mcast(i32*, i32) #2

declare dso_local i32 @cpsw_ale_set_vlan_unreg_mcast(i32*, i32, i32) #2

declare dso_local i32 @cpsw_ale_write(%struct.cpsw_ale*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
