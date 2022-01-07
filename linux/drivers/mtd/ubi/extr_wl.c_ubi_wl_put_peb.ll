; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_wl_put_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_wl_put_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.ubi_wl_entry*, i32, %struct.ubi_wl_entry*, %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"PEB %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PEB %d is being moved, wait\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"PEB %d is the target of data moving\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"PEB %d not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_wl_put_peb(%struct.ubi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @dbg_wl(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %10, align 4
  %17 = icmp sge i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ubi_assert(i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ubi_assert(i32 %25)
  %27 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 3
  %29 = call i32 @down_read(i32* %28)
  br label %30

30:                                               ; preds = %46, %5
  %31 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 4
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %35 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %34, i32 0, i32 11
  %36 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %36, i64 %38
  %40 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %39, align 8
  store %struct.ubi_wl_entry* %40, %struct.ubi_wl_entry** %13, align 8
  %41 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %42 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %43 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %42, i32 0, i32 10
  %44 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %43, align 8
  %45 = icmp eq %struct.ubi_wl_entry* %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %30
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dbg_wl(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 4
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %53 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %52, i32 0, i32 9
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %56 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %55, i32 0, i32 9
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %30

58:                                               ; preds = %30
  %59 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %60 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %61 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %60, i32 0, i32 8
  %62 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %61, align 8
  %63 = icmp eq %struct.ubi_wl_entry* %59, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dbg_wl(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %68 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @ubi_assert(i32 %72)
  %74 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %75 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %77 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %76, i32 0, i32 4
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %80 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %79, i32 0, i32 3
  %81 = call i32 @up_read(i32* %80)
  store i32 0, i32* %6, align 4
  br label %200

82:                                               ; preds = %58
  %83 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %84 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %85 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %84, i32 0, i32 5
  %86 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %90 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %91 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %92 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %91, i32 0, i32 5
  %93 = call i32 @self_check_in_wl_tree(%struct.ubi_device* %89, %struct.ubi_wl_entry* %90, i32* %92)
  %94 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %95 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %98 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %97, i32 0, i32 5
  %99 = call i32 @rb_erase(i32* %96, i32* %98)
  br label %170

100:                                              ; preds = %82
  %101 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %102 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %103 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %102, i32 0, i32 7
  %104 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %108 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %109 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %110 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %109, i32 0, i32 7
  %111 = call i32 @self_check_in_wl_tree(%struct.ubi_device* %107, %struct.ubi_wl_entry* %108, i32* %110)
  %112 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %113 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %116 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %115, i32 0, i32 7
  %117 = call i32 @rb_erase(i32* %114, i32* %116)
  br label %169

118:                                              ; preds = %100
  %119 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %120 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %121 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %120, i32 0, i32 6
  %122 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %119, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %118
  %125 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %126 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %127 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %128 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %127, i32 0, i32 6
  %129 = call i32 @self_check_in_wl_tree(%struct.ubi_device* %125, %struct.ubi_wl_entry* %126, i32* %128)
  %130 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %131 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %134 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %133, i32 0, i32 6
  %135 = call i32 @rb_erase(i32* %132, i32* %134)
  %136 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %137 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %141 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp sge i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @ubi_assert(i32 %144)
  store i32 1, i32* %11, align 4
  br label %168

146:                                              ; preds = %118
  %147 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %148 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %149 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @prot_queue_del(%struct.ubi_device* %147, i32 %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %146
  %155 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @ubi_err(%struct.ubi_device* %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %159 = call i32 @ubi_ro_mode(%struct.ubi_device* %158)
  %160 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %161 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %160, i32 0, i32 4
  %162 = call i32 @spin_unlock(i32* %161)
  %163 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %164 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %163, i32 0, i32 3
  %165 = call i32 @up_read(i32* %164)
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %6, align 4
  br label %200

167:                                              ; preds = %146
  br label %168

168:                                              ; preds = %167, %124
  br label %169

169:                                              ; preds = %168, %106
  br label %170

170:                                              ; preds = %169, %88
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171
  %173 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %174 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %173, i32 0, i32 4
  %175 = call i32 @spin_unlock(i32* %174)
  %176 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %177 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @schedule_erase(%struct.ubi_device* %176, %struct.ubi_wl_entry* %177, i32 %178, i32 %179, i32 %180, i32 0)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %172
  %185 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %186 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %185, i32 0, i32 4
  %187 = call i32 @spin_lock(i32* %186)
  %188 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %13, align 8
  %189 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %190 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %189, i32 0, i32 5
  %191 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %188, i32* %190)
  %192 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %193 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %192, i32 0, i32 4
  %194 = call i32 @spin_unlock(i32* %193)
  br label %195

195:                                              ; preds = %184, %172
  %196 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %197 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %196, i32 0, i32 3
  %198 = call i32 @up_read(i32* %197)
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %195, %154, %64
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @dbg_wl(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @in_wl_tree(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @self_check_in_wl_tree(%struct.ubi_device*, %struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @prot_queue_del(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @schedule_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_tree_add(%struct.ubi_wl_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
