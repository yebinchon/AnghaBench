; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_bitflip_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_bitflip_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.ubi_wl_entry**, i32, i32, i32 }
%struct.ubi_wl_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_bitflip_check(%struct.ubi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %207

20:                                               ; preds = %11
  %21 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 1
  %23 = call i32 @down_write(i32* %22)
  %24 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 7
  %29 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %29, i64 %31
  %33 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %32, align 8
  store %struct.ubi_wl_entry* %33, %struct.ubi_wl_entry** %8, align 8
  %34 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %35 = icmp ne %struct.ubi_wl_entry* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %20
  %37 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %203

42:                                               ; preds = %20
  %43 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %44 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %45 = call i32 @scrub_possible(%struct.ubi_device* %43, %struct.ubi_wl_entry* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %49 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %203

53:                                               ; preds = %42
  %54 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %55 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %53
  %60 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %61 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %60, i32 0, i32 8
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %64 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %65 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ubi_io_read(%struct.ubi_device* %63, i32 %66, i32 %67, i32 0, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %73 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %72, i32 0, i32 8
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %75

75:                                               ; preds = %59, %53
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %201

82:                                               ; preds = %78, %75
  %83 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %84 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %83, i32 0, i32 2
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %87 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %86, i32 0, i32 7
  %88 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %88, i64 %90
  %92 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %91, align 8
  store %struct.ubi_wl_entry* %92, %struct.ubi_wl_entry** %8, align 8
  %93 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %94 = icmp ne %struct.ubi_wl_entry* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %82
  %96 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %97 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %96, i32 0, i32 2
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %203

101:                                              ; preds = %82
  %102 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %103 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %104 = call i32 @scrub_possible(%struct.ubi_device* %102, %struct.ubi_wl_entry* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %108 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %107, i32 0, i32 2
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load i32, i32* @EBUSY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  br label %203

112:                                              ; preds = %101
  %113 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %114 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %115 = call i64 @in_pq(%struct.ubi_device* %113, %struct.ubi_wl_entry* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %119 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %120 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @prot_queue_del(%struct.ubi_device* %118, i32 %121)
  %123 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %124 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %125 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %124, i32 0, i32 5
  %126 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %123, i32* %125)
  %127 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %128 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %127, i32 0, i32 2
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %131 = call i32 @ensure_wear_leveling(%struct.ubi_device* %130, i32 1)
  store i32 %131, i32* %7, align 4
  br label %191

132:                                              ; preds = %112
  %133 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %134 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %135 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %134, i32 0, i32 6
  %136 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %133, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %132
  %139 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %140 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %143 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %142, i32 0, i32 6
  %144 = call i32 @rb_erase(i32* %141, i32* %143)
  %145 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %146 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %147 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %146, i32 0, i32 5
  %148 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %145, i32* %147)
  %149 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %150 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %149, i32 0, i32 2
  %151 = call i32 @spin_unlock(i32* %150)
  %152 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %153 = call i32 @ensure_wear_leveling(%struct.ubi_device* %152, i32 1)
  store i32 %153, i32* %7, align 4
  br label %190

154:                                              ; preds = %132
  %155 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %156 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %157 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %156, i32 0, i32 4
  %158 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %155, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %154
  %161 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %162 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %165 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %164, i32 0, i32 4
  %166 = call i32 @rb_erase(i32* %163, i32* %165)
  %167 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %168 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %172 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %171, i32 0, i32 2
  %173 = call i32 @spin_unlock(i32* %172)
  %174 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %175 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %176 = load i32, i32* @UBI_UNKNOWN, align 4
  %177 = load i32, i32* @UBI_UNKNOWN, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 0, i32 1
  %182 = call i32 @schedule_erase(%struct.ubi_device* %174, %struct.ubi_wl_entry* %175, i32 %176, i32 %177, i32 %181, i32 1)
  store i32 %182, i32* %7, align 4
  br label %189

183:                                              ; preds = %154
  %184 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %185 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %184, i32 0, i32 2
  %186 = call i32 @spin_unlock(i32* %185)
  %187 = load i32, i32* @EAGAIN, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %183, %160
  br label %190

190:                                              ; preds = %189, %138
  br label %191

191:                                              ; preds = %190, %117
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %6, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* @EUCLEAN, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %7, align 4
  br label %200

200:                                              ; preds = %197, %194, %191
  br label %202

201:                                              ; preds = %78
  store i32 0, i32* %7, align 4
  br label %202

202:                                              ; preds = %201, %200
  br label %203

203:                                              ; preds = %202, %106, %95, %47, %36
  %204 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %205 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %204, i32 0, i32 1
  %206 = call i32 @up_write(i32* %205)
  br label %207

207:                                              ; preds = %203, %17
  %208 = load i32, i32* %7, align 4
  ret i32 %208
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @scrub_possible(%struct.ubi_device*, %struct.ubi_wl_entry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @in_pq(%struct.ubi_device*, %struct.ubi_wl_entry*) #1

declare dso_local i32 @prot_queue_del(%struct.ubi_device*, i32) #1

declare dso_local i32 @wl_tree_add(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @ensure_wear_leveling(%struct.ubi_device*, i32) #1

declare dso_local i64 @in_wl_tree(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @schedule_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32, i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
