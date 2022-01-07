; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_handle_active_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_handle_active_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.slave = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.sockaddr_storage = type { i32, i32* }
%struct.sockaddr = type { i32 }

@BOND_MODE_TLB = common dso_local global i64 0, align 8
@MAX_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_alb_handle_active_change(%struct.bonding* %0, %struct.slave* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.slave*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca %struct.slave*, align 8
  %7 = alloca %struct.sockaddr_storage, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.slave* %1, %struct.slave** %4, align 8
  %10 = load %struct.bonding*, %struct.bonding** %3, align 8
  %11 = getelementptr inbounds %struct.bonding, %struct.bonding* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.slave* @rtnl_dereference(i32 %12)
  store %struct.slave* %13, %struct.slave** %6, align 8
  %14 = load %struct.slave*, %struct.slave** %6, align 8
  %15 = load %struct.slave*, %struct.slave** %4, align 8
  %16 = icmp eq %struct.slave* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %161

18:                                               ; preds = %2
  %19 = load %struct.slave*, %struct.slave** %6, align 8
  %20 = icmp ne %struct.slave* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.bonding*, %struct.bonding** %3, align 8
  %23 = getelementptr inbounds %struct.bonding, %struct.bonding* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.slave*, %struct.slave** %6, align 8
  %29 = getelementptr inbounds %struct.slave, %struct.slave* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @dev_set_promiscuity(%struct.TYPE_7__* %30, i32 -1)
  %32 = load %struct.bonding*, %struct.bonding** %3, align 8
  %33 = getelementptr inbounds %struct.bonding, %struct.bonding* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.bonding*, %struct.bonding** %3, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %27, %21, %18
  %39 = load %struct.slave*, %struct.slave** %6, align 8
  store %struct.slave* %39, %struct.slave** %5, align 8
  %40 = load %struct.bonding*, %struct.bonding** %3, align 8
  %41 = getelementptr inbounds %struct.bonding, %struct.bonding* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.slave*, %struct.slave** %4, align 8
  %44 = call i32 @rcu_assign_pointer(i32 %42, %struct.slave* %43)
  %45 = load %struct.slave*, %struct.slave** %4, align 8
  %46 = icmp ne %struct.slave* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.bonding*, %struct.bonding** %3, align 8
  %49 = call i32 @bond_has_slaves(%struct.bonding* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %38
  br label %161

52:                                               ; preds = %47
  %53 = load %struct.slave*, %struct.slave** %5, align 8
  %54 = icmp ne %struct.slave* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.bonding*, %struct.bonding** %3, align 8
  %57 = load %struct.bonding*, %struct.bonding** %3, align 8
  %58 = getelementptr inbounds %struct.bonding, %struct.bonding* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call %struct.slave* @bond_slave_has_mac(%struct.bonding* %56, i32* %61)
  store %struct.slave* %62, %struct.slave** %5, align 8
  br label %63

63:                                               ; preds = %55, %52
  %64 = load %struct.slave*, %struct.slave** %5, align 8
  %65 = icmp ne %struct.slave* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.bonding*, %struct.bonding** %3, align 8
  %68 = load %struct.slave*, %struct.slave** %5, align 8
  %69 = call i32 @tlb_clear_slave(%struct.bonding* %67, %struct.slave* %68, i32 1)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.bonding*, %struct.bonding** %3, align 8
  %72 = load %struct.slave*, %struct.slave** %4, align 8
  %73 = call i32 @tlb_clear_slave(%struct.bonding* %71, %struct.slave* %72, i32 1)
  %74 = load %struct.bonding*, %struct.bonding** %3, align 8
  %75 = call i64 @BOND_MODE(%struct.bonding* %74)
  %76 = load i64, i64* @BOND_MODE_TLB, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %130

78:                                               ; preds = %70
  %79 = load i32, i32* @MAX_ADDR_LEN, align 4
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %8, align 8
  %82 = alloca i32, i64 %80, align 16
  store i64 %80, i64* %9, align 8
  %83 = load %struct.slave*, %struct.slave** %4, align 8
  %84 = getelementptr inbounds %struct.slave, %struct.slave* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.slave*, %struct.slave** %4, align 8
  %89 = getelementptr inbounds %struct.slave, %struct.slave* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @bond_hw_addr_copy(i32* %82, i32* %87, i32 %92)
  %94 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.bonding*, %struct.bonding** %3, align 8
  %97 = getelementptr inbounds %struct.bonding, %struct.bonding* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.bonding*, %struct.bonding** %3, align 8
  %102 = getelementptr inbounds %struct.bonding, %struct.bonding* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @bond_hw_addr_copy(i32* %95, i32* %100, i32 %105)
  %107 = load %struct.bonding*, %struct.bonding** %3, align 8
  %108 = getelementptr inbounds %struct.bonding, %struct.bonding* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load %struct.slave*, %struct.slave** %4, align 8
  %114 = getelementptr inbounds %struct.slave, %struct.slave* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %117 = call i32 @dev_set_mac_address(%struct.TYPE_7__* %115, %struct.sockaddr* %116, i32* null)
  %118 = load %struct.slave*, %struct.slave** %4, align 8
  %119 = getelementptr inbounds %struct.slave, %struct.slave* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.slave*, %struct.slave** %4, align 8
  %124 = getelementptr inbounds %struct.slave, %struct.slave* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @bond_hw_addr_copy(i32* %122, i32* %82, i32 %127)
  %129 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %129)
  br label %130

130:                                              ; preds = %78, %70
  %131 = load %struct.slave*, %struct.slave** %5, align 8
  %132 = icmp ne %struct.slave* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load %struct.slave*, %struct.slave** %5, align 8
  %135 = load %struct.slave*, %struct.slave** %4, align 8
  %136 = call i32 @alb_swap_mac_addr(%struct.slave* %134, %struct.slave* %135)
  %137 = load %struct.bonding*, %struct.bonding** %3, align 8
  %138 = load %struct.slave*, %struct.slave** %5, align 8
  %139 = load %struct.slave*, %struct.slave** %4, align 8
  %140 = call i32 @alb_fasten_mac_swap(%struct.bonding* %137, %struct.slave* %138, %struct.slave* %139)
  br label %161

141:                                              ; preds = %130
  %142 = load %struct.slave*, %struct.slave** %4, align 8
  %143 = load %struct.bonding*, %struct.bonding** %3, align 8
  %144 = getelementptr inbounds %struct.bonding, %struct.bonding* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.bonding*, %struct.bonding** %3, align 8
  %149 = getelementptr inbounds %struct.bonding, %struct.bonding* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @alb_set_slave_mac_addr(%struct.slave* %142, i32* %147, i32 %152)
  %154 = load %struct.slave*, %struct.slave** %4, align 8
  %155 = load %struct.bonding*, %struct.bonding** %3, align 8
  %156 = getelementptr inbounds %struct.bonding, %struct.bonding* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @alb_send_learning_packets(%struct.slave* %154, i32* %159, i32 0)
  br label %161

161:                                              ; preds = %17, %51, %141, %133
  ret void
}

declare dso_local %struct.slave* @rtnl_dereference(i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.slave*) #1

declare dso_local i32 @bond_has_slaves(%struct.bonding*) #1

declare dso_local %struct.slave* @bond_slave_has_mac(%struct.bonding*, i32*) #1

declare dso_local i32 @tlb_clear_slave(%struct.bonding*, %struct.slave*, i32) #1

declare dso_local i64 @BOND_MODE(%struct.bonding*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bond_hw_addr_copy(i32*, i32*, i32) #1

declare dso_local i32 @dev_set_mac_address(%struct.TYPE_7__*, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @alb_swap_mac_addr(%struct.slave*, %struct.slave*) #1

declare dso_local i32 @alb_fasten_mac_swap(%struct.bonding*, %struct.slave*, %struct.slave*) #1

declare dso_local i32 @alb_set_slave_mac_addr(%struct.slave*, i32*, i32) #1

declare dso_local i32 @alb_send_learning_packets(%struct.slave*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
