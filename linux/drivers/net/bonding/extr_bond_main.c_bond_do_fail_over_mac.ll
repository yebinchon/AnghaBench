; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_do_fail_over_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_do_fail_over_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.slave = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.sockaddr_storage = type { i32, i32* }
%struct.sockaddr = type { i32 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error %d setting bond MAC from slave\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Error %d setting MAC of new active slave\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Error %d setting MAC of old active slave\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"bond_do_fail_over_mac impossible: bad policy %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, %struct.slave*, %struct.slave*)* @bond_do_fail_over_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_do_fail_over_mac(%struct.bonding* %0, %struct.slave* %1, %struct.slave* %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca %struct.slave*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_storage, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.slave* %1, %struct.slave** %5, align 8
  store %struct.slave* %2, %struct.slave** %6, align 8
  %12 = load i32, i32* @MAX_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.bonding*, %struct.bonding** %4, align 8
  %17 = getelementptr inbounds %struct.bonding, %struct.bonding* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %166 [
    i32 129, label %20
    i32 128, label %45
  ]

20:                                               ; preds = %3
  %21 = load %struct.slave*, %struct.slave** %5, align 8
  %22 = icmp ne %struct.slave* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.bonding*, %struct.bonding** %4, align 8
  %25 = getelementptr inbounds %struct.bonding, %struct.bonding* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load %struct.slave*, %struct.slave** %5, align 8
  %28 = getelementptr inbounds %struct.slave, %struct.slave* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = call i32 @bond_set_dev_addr(%struct.TYPE_9__* %26, %struct.TYPE_10__* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = load %struct.bonding*, %struct.bonding** %4, align 8
  %35 = getelementptr inbounds %struct.bonding, %struct.bonding* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load %struct.slave*, %struct.slave** %5, align 8
  %38 = getelementptr inbounds %struct.slave, %struct.slave* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @slave_err(%struct.TYPE_9__* %36, %struct.TYPE_10__* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %33, %23
  br label %44

44:                                               ; preds = %43, %20
  br label %175

45:                                               ; preds = %3
  %46 = load %struct.slave*, %struct.slave** %5, align 8
  %47 = icmp ne %struct.slave* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  br label %176

49:                                               ; preds = %45
  %50 = load %struct.slave*, %struct.slave** %6, align 8
  %51 = icmp ne %struct.slave* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load %struct.bonding*, %struct.bonding** %4, align 8
  %54 = load %struct.slave*, %struct.slave** %5, align 8
  %55 = call %struct.slave* @bond_get_old_active(%struct.bonding* %53, %struct.slave* %54)
  store %struct.slave* %55, %struct.slave** %6, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.slave*, %struct.slave** %6, align 8
  %58 = icmp ne %struct.slave* %57, null
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = load %struct.slave*, %struct.slave** %5, align 8
  %61 = getelementptr inbounds %struct.slave, %struct.slave* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.slave*, %struct.slave** %5, align 8
  %66 = getelementptr inbounds %struct.slave, %struct.slave* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bond_hw_addr_copy(i32* %15, i32* %64, i32 %69)
  %71 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.slave*, %struct.slave** %6, align 8
  %74 = getelementptr inbounds %struct.slave, %struct.slave* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.slave*, %struct.slave** %6, align 8
  %79 = getelementptr inbounds %struct.slave, %struct.slave* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bond_hw_addr_copy(i32* %72, i32* %77, i32 %82)
  %84 = load %struct.slave*, %struct.slave** %5, align 8
  %85 = getelementptr inbounds %struct.slave, %struct.slave* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  br label %110

90:                                               ; preds = %56
  %91 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.bonding*, %struct.bonding** %4, align 8
  %94 = getelementptr inbounds %struct.bonding, %struct.bonding* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.bonding*, %struct.bonding** %4, align 8
  %99 = getelementptr inbounds %struct.bonding, %struct.bonding* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @bond_hw_addr_copy(i32* %92, i32* %97, i32 %102)
  %104 = load %struct.bonding*, %struct.bonding** %4, align 8
  %105 = getelementptr inbounds %struct.bonding, %struct.bonding* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i32 %108, i32* %109, align 8
  br label %110

110:                                              ; preds = %90, %59
  %111 = load %struct.slave*, %struct.slave** %5, align 8
  %112 = getelementptr inbounds %struct.slave, %struct.slave* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %115 = call i32 @dev_set_mac_address(%struct.TYPE_10__* %113, %struct.sockaddr* %114, i32* null)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %110
  %119 = load %struct.bonding*, %struct.bonding** %4, align 8
  %120 = getelementptr inbounds %struct.bonding, %struct.bonding* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load %struct.slave*, %struct.slave** %5, align 8
  %123 = getelementptr inbounds %struct.slave, %struct.slave* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 0, %125
  %127 = call i32 @slave_err(%struct.TYPE_9__* %121, %struct.TYPE_10__* %124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %165

128:                                              ; preds = %110
  %129 = load %struct.slave*, %struct.slave** %6, align 8
  %130 = icmp ne %struct.slave* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  br label %165

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.slave*, %struct.slave** %5, align 8
  %136 = getelementptr inbounds %struct.slave, %struct.slave* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @bond_hw_addr_copy(i32* %134, i32* %15, i32 %139)
  %141 = load %struct.slave*, %struct.slave** %6, align 8
  %142 = getelementptr inbounds %struct.slave, %struct.slave* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i32 %145, i32* %146, align 8
  %147 = load %struct.slave*, %struct.slave** %6, align 8
  %148 = getelementptr inbounds %struct.slave, %struct.slave* %147, i32 0, i32 0
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %151 = call i32 @dev_set_mac_address(%struct.TYPE_10__* %149, %struct.sockaddr* %150, i32* null)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %132
  %155 = load %struct.bonding*, %struct.bonding** %4, align 8
  %156 = getelementptr inbounds %struct.bonding, %struct.bonding* %155, i32 0, i32 1
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load %struct.slave*, %struct.slave** %6, align 8
  %159 = getelementptr inbounds %struct.slave, %struct.slave* %158, i32 0, i32 0
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sub nsw i32 0, %161
  %163 = call i32 @slave_err(%struct.TYPE_9__* %157, %struct.TYPE_10__* %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %154, %132
  br label %165

165:                                              ; preds = %164, %131, %118
  br label %175

166:                                              ; preds = %3
  %167 = load %struct.bonding*, %struct.bonding** %4, align 8
  %168 = getelementptr inbounds %struct.bonding, %struct.bonding* %167, i32 0, i32 1
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = load %struct.bonding*, %struct.bonding** %4, align 8
  %171 = getelementptr inbounds %struct.bonding, %struct.bonding* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @netdev_err(%struct.TYPE_9__* %169, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %166, %165, %44
  store i32 0, i32* %11, align 4
  br label %176

176:                                              ; preds = %175, %48
  %177 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %11, align 4
  switch i32 %178, label %180 [
    i32 0, label %179
    i32 1, label %179
  ]

179:                                              ; preds = %176, %176
  ret void

180:                                              ; preds = %176
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bond_set_dev_addr(%struct.TYPE_9__*, %struct.TYPE_10__*) #2

declare dso_local i32 @slave_err(%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i32) #2

declare dso_local %struct.slave* @bond_get_old_active(%struct.bonding*, %struct.slave*) #2

declare dso_local i32 @bond_hw_addr_copy(i32*, i32*, i32) #2

declare dso_local i32 @dev_set_mac_address(%struct.TYPE_10__*, %struct.sockaddr*, i32*) #2

declare dso_local i32 @netdev_err(%struct.TYPE_9__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
